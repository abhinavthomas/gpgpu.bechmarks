import os
import time
import pathlib
import subprocess
import datetime
import functools

import config
import libcecl_pb2

LIBCECL_SO = config.BASE_PATH / 'libcecl.so'
LIBCECL_HEADER = config.BASE_PATH / 'libcecl.h'

def run_env(clenv, os_env=None):
  """Return an execution environment for a libcecl benchmark."""
  env = (os_env or os.environ).copy()
  env['LD_LIBRARY_PATH'] = ':'.join([str(LIBCECL_SO.parent), str(config.LIBOPENCL_DIR)])
  env['DYLD_LIBRARY_PATH'] = ':'.join([str(LIBCECL_SO.parent), str(config.LIBOPENCL_DIR)])
  env['LIBCECL_DEVICE'] = clenv.device_name
  env['LIBCECL_PLATFORM'] = clenv.platform_name
  return env

def execute(command, clenv, os_env=None, record_outputs=True):
  """Run executable using libcecl and log output."""
  d = datetime.datetime.utcnow()
  d = d.replace(microsecond=int(d.microsecond / 1000) * 1000)
  timestamp = int(d.strftime('%s%f')[:-3])

  os_env = run_env(clenv, os_env)
  start_time = time.time()
  process = subprocess.run(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE, env=os_env, universal_newlines=True)
  elapsed = time.time() - start_time

  stderr_lines, cecl_lines, program_sources, build_options = SplitStderrComponents(process.stderr)

  return libcecl_pb2.LibceclExecutableRun(
    ms_since_unix_epoch=timestamp,
    returncode=process.returncode,
    stdout=process.stdout if record_outputs else "",
    stderr="\n".join(stderr_lines) if record_outputs else "",
    cecl_log="\n".join(cecl_lines) if record_outputs else "",
    kernel_invocation=KernelInvocationsFromCeclLog(
      cecl_lines,
      expected_devtype=clenv.device_type,
      expected_device_name=clenv.device_name,
    ),
    elapsed_time_ns=int(elapsed * 1e9),
    opencl_program_source=program_sources,
    opencl_build_options=build_options,
  )

@functools.lru_cache(maxsize=2)
def compile_flags(opencl_headers=True):
  """Get device-specific LibCecl compile and link flags.

  WARNING: Executable compiled with these flags must be executed with the
  environment variables from LibCeclExecutableEnvironmentVariables() to set a
  correct LD_LIBRARY_PATH!
  """
  cflags = []
  if opencl_headers:
    cflags.extend(['-isystem', str(config.OPENCL_HEADERS_DIR)])
  cflags.extend(['-isystem', str(LIBCECL_HEADER.parent)])
  ldflags = [
        f'-L{config.LIBOPENCL_DIR}',
        f'-Wl,-rpath,{config.LIBOPENCL_DIR}',
        '-lOpenCL',
        '-DCL_SILENCE_DEPRECATION',
        '-lpapi',
        '-lcecl', 
        f'-L{LIBCECL_SO.parent}'
  ]
  return cflags, ldflags

def SplitStderrComponents(stderr):
  """Split stderr output into components."""
  program_sources = []
  build_options = []
  current_program_source = None

  # Split libcecl logs out from stderr.
  cecl_lines, stderr_lines = [], []
  in_program_source = False
  for line in stderr.split("\n"):
    if line == "[CECL] BEGIN PROGRAM SOURCE":
      assert not in_program_source
      in_program_source = True
      current_program_source = []
    elif line == "[CECL] END PROGRAM SOURCE":
      assert in_program_source
      in_program_source = False
      program_sources.append("\n".join(current_program_source).strip())
      current_program_source = None
    elif line.startswith("[CECL] clBuildOptions ;"):
      build_options.append(line.partition(';')[2].strip())
    elif line.startswith("[CECL] "):
      stripped_line = line[len("[CECL] ") :].strip()
      if in_program_source:
        # Right strip program sources only, don't left strip since that would
        # lose indentation.
        current_program_source.append(line[len("[CECL] ") :].rstrip())
      elif stripped_line:
        cecl_lines.append(stripped_line)
    elif line.strip():
      stderr_lines.append(line.strip())

  return (stderr_lines, cecl_lines, program_sources, build_options)

def KernelInvocationsFromCeclLog(cecl_log, expected_devtype=None, expected_device_name=None):
  """Interpret and parse the output of a libcecl instrumented application.

  This is an updated and adapted implementation of
  kernel_invocations_from_cecl_log() from:
    //docs/2017_02_cgo/code/benchmarks:cecl2features

  Args:
    cecl_log: The lines of output printed by libcecl, with the '[CECL] ' prefix
      stripped. As a list of lines.
    expected_devtype: The expected device type, e.g. "GPU" or "CPU".
    expected_device_name: The expected OpenCL device name.

  Raises:
    ValueError: If the device type or name reported in the cecl_log does not
      match the expected value.
  """
  # Per-benchmark data transfer size and time.
  total_transferred_bytes = 0
  total_transfer_time = 0

  kernel_invocations = []

  # Iterate over each line in the cec log.
  for line in cecl_log:
    # Split line based on ; delimiter into opcode and operands.
    components = [x.strip() for x in line.strip().split(";")]
    opcode, operands = components[0], components[1:]

    # Skip empty lines.
    if not opcode:
      continue

    if opcode == "clCreateCommandQueue":
      devtype, devname = operands

      # If we don't know the device type, don't check it. This isn't a problem -
      # not all drivers report device type correctly, e.g. POCL returns a
      # non-standard device type value.
      if (
        expected_devtype
        and devtype != "UNKNOWN"
        and devtype != expected_devtype
      ):
        raise ValueError(
          f"Expected device type {expected_devtype} does not match actual "
          f"device type {devtype}"
        )

      if expected_device_name and devname != expected_device_name:
        raise ValueError(
          f"Expected device name '{expected_device_name}' does not match "
          f"actual device name '{devname}'"
        )

    elif opcode == "clEnqueueNDRangeKernel":
      kernel_name, global_size, local_size, elapsed = operands
      kernel_invocations.append(
        libcecl_pb2.OpenClKernelInvocation(
          kernel_name=kernel_name,
          global_size=int(global_size),
          local_size=int(local_size),
          kernel_time_ns=int(elapsed),
        )
      )
    elif opcode == "clEnqueueTask":
      kernel_name, elapsed = operands
      kernel_invocations.append(
        libcecl_pb2.OpenClKernelInvocation(
          kernel_name=kernel_name,
          global_size=1,
          local_size=1,
          kernel_time_ns=int(elapsed),
        )
      )
    elif opcode == "clCreateBuffer":
      size, _, flags = operands
      size = int(size)
      flags = flags.split("|")
      if "CL_MEM_COPY_HOST_PTR" in flags and "CL_MEM_READ_ONLY" not in flags:
        # Device <-> host.
        total_transferred_bytes += size * 2
      else:
        # Host -> Device, or Device -> host.
        total_transferred_bytes += size
    elif (
      opcode == "clEnqueueReadBuffer"
      or opcode == "clEnqueueWriteBuffer"
      or opcode == "clEnqueueMapBuffer"
    ):
      _, size, elapsed = operands
      total_transfer_time += int(elapsed)
    else:
      # Not a line that we're interested in.
      pass

  # Defer transfer overhead until we have computed it.
  for ki in kernel_invocations:
    ki.transferred_bytes = total_transferred_bytes
    ki.transfer_time_ns = total_transfer_time

  return kernel_invocations


