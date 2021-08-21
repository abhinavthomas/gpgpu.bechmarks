#!/usr/bin/env python3
# Copyright 2019-2020 Chris Chris Cummins <chrisc.101@gmail.com>
# Modified by: Abhinav Thomas <abhinavthomas@gmail.com>.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
"""A collection of seven GPGPU benchmark suites.

These seven benchmark suites were responsible for 92% of GPU results published
in 25 top tier conference papers. For more details, see:

	Cummins, C., Petoumenos, P., Zang, W., & Leather, H. (2017). Synthesizing
	Benchmarks for Predictive Modeling. In CGO. IEEE.

When executed as a binary, this file runs the selected benchmark suites and
dumps the execution logs generated by libcecl in a directory.

"""
import contextlib
import multiprocessing
import os
import sys
import pathlib
import subprocess
import tempfile
import typing
import datetime
import socket
import logging

import config
import fs
import libcecl_run
import gpgpu_pb2
import libcecl_pb2

# The list of all GPGPU benchmark suites.
_PARTIAL_RERUN = None

_HOSTNAME = socket.gethostname()
_WORKERS_COUNT = multiprocessing.cpu_count()
_RECORD_OUTPUTS = True
_FAIL_ON_ERROR = False


def all_envs() -> typing.Tuple[libcecl_pb2.OpenClDevice]:
    env1 = libcecl_pb2.OpenClDevice()
    env1.name = 'GPU|NVIDIA CUDA|Quadro GP100|384.111|1.2'
    # env1.name = 'CPU|Intel(R) CPU Runtime for OpenCL(TM) Applications|Intel(R) Xeon(R) CPU E5-2650 v2 @ 2.60GHz|18.1.0.0920|2.1'
    # env1.platform_name = 'Intel(R) CPU Runtime for OpenCL(TM) Applications'
    env1.platform_name = 'NVIDIA CUDA'
    env1.device_name = 'Quadro GP100'
    env1.driver_version = '384.111'
    env1.opencl_version = '1.2'
    env1.device_type = 'GPU'
    env1.platform_id = 0
    env1.device_id = 0
    env1.opencl_opt = True

    return env1,


class BenchmarkInterrupt(OSError):
    """Early exit from benchmarking signal."""

    pass


class UsageError(Exception):
    """Exception raised when the arguments supplied by the user are invalid."""

    def __init__(self, message):
        super(UsageError, self).__init__(message)
        sys.exit(1)


def CheckCall(
    command: typing.Union[str, typing.List[str]],
    shell: bool = False,
    env: typing.Dict[str, str] = None,
):
    """Wrapper around subprocess.check_call() to log executed commands."""
    if shell:
        logging.debug('$ %s', command)
        subprocess.check_call(command, shell=True, env=env)
    else:
        command = [str(x) for x in command]
        logging.debug('$ %s', ' '.join(command))
        subprocess.check_call(command, env=env)


def RewriteClDeviceType(
    env: libcecl_pb2.OpenClDevice, path: pathlib.Path
):
    """Rewrite all instances of CL_DEVICE_TYPE_XXX in the given path."""
    cl_device_type = (
        "CL_DEVICE_TYPE_GPU"
        if env.device_type.lower() == "gpu"
        else "CL_DEVICE_TYPE_CPU"
    )
    CheckCall(
        f"""\
for f in $(find '{path}' -type f); do
	grep CL_DEVICE_TYPE_ $f &>/dev/null && {{
		sed -E -i 's/CL_DEVICE_TYPE_[A-Z]+/{cl_device_type}/g' $f
		echo Set {cl_device_type} in $f
	}} || true
done""",
        shell=True,
    )


class BenchmarkRunObserver(object):
    """A class which provides a callback for processing / storing benchmark logs.
    """

    def OnBenchmarkRun(self, log: gpgpu_pb2.BenchmarkRun) -> bool:
        """Notification callback that a new benchmark has been run.

        Args:
                log: The benchmark run log.

        Returns:
                True if should caryy on benchmarking, else False. If False, benchmarking
                will terminate once all observers have been notified.
        """
        raise NotImplementedError


class DumpLogProtoToFileObserver(BenchmarkRunObserver):
    """A benchmark observer that writes the log proto to file."""

    def __init__(self, logdir: pathlib.Path, file_extension: str = '.pb'):
        self._logdir = logdir
        self._logdir.mkdir(exist_ok=True, parents=True)
        self._log_paths: typing.List[pathlib.Path] = []
        self._file_extension = file_extension
        self._cyclic_counter = 0

    def OnBenchmarkRun(self, log: gpgpu_pb2.BenchmarkRun) -> bool:
        """New log callback."""
        d = datetime.datetime.utcnow()
        d = d.replace(microsecond=int(d.microsecond / 1000)
                      * 1000 + self._cyclic_counter)
        timestamp = int(d.strftime('%s%f'))
        log_name = '.'.join(
            [
                log.hostname,
                log.device_name,
                log.benchmark_suite,
                log.benchmark_name,
                log.dataset_name,
                str(timestamp),
            ]
        )

        self._cyclic_counter += 1
        if self._cyclic_counter == 1000:
            self._cyclic_counter = 0

        if log.run.returncode:
            log_path = self._logdir / f'{log_name}.ERROR{self._file_extension}'
        else:
            log_path = self._logdir / f'{log_name}{self._file_extension}'

        with open(log_path, 'wb') as f:
            f.write(log.SerializeToString())

        logging.info('Wrote %s', log_path)
        self._log_paths.append(log_path)
        return True

    @property
    def logs(self) -> typing.Iterable[gpgpu_pb2.BenchmarkRun]:
        """Return an iterator of log protos."""
        lst = []
        for log_path in self._log_paths:
            log = gpgpu_pb2.BenchmarkRun()
            with open(log_path, 'rb') as f:
                log.ParseFromString(f.read())
            lst.append(log)
        return lst

    @property
    def log_count(self) -> int:
        return len(self._log_paths)


class FailOnErrorObserver(BenchmarkRunObserver):
    """A benchmark observer that exits on error."""

    def OnBenchmarkRun(self, log: gpgpu_pb2.BenchmarkRun) -> bool:
        """New log callback."""
        if log.run.returncode:
            logging.error('Benchmark failed with stderr:\n%s', log.run.stderr)
            return False
        return True


@contextlib.contextmanager
def MakeEnv(
    make_dir: pathlib.Path, opencl_headers: bool = True
) -> typing.Dict[str, str]:
    """Return a build environment for GPGPU benchmarks."""
    with fs.chdir(make_dir):
        with tempfile.TemporaryDirectory(prefix='libcecl_header_') as d:
            d = pathlib.Path(d)
            env = os.environ.copy()
            cflags, ldflags = libcecl_run.compile_flags(
                opencl_headers=opencl_headers)
            env['CFLAGS'] = ' '.join(
                cflags) + f' -isystem {d}' + f' -std=gnu11'
            env['CXXFLAGS'] = ' '.join(cflags) + f' -isystem {d}'
            env['LDFLAGS'] = ' '.join(ldflags)

            for flag in ['CFLAGS', 'CXXFLAGS', 'LDFLAGS']:
                env[f'EXTRA_{flag}'] = env[flag]
            yield env


def Make(
    target: typing.Optional[str],
    make_dir: pathlib.Path,
    extra_make_args: typing.Optional[typing.List[str]] = None,
) -> None:
    """Run make target in the given path."""
    if not (make_dir / "Makefile").is_file():
        raise EnvironmentError(f"Cannot find Makefile in {make_dir}")

    # Build relative to the path, rather than using `make -c <path>`. This is
    # because some of the source codes have hard-coded relative paths.
    with MakeEnv(make_dir) as env:
        logging.debug('Running make %s in %s', target, make_dir)
        CheckCall(
            ["make", "-j", _WORKERS_COUNT]
            + ([target] if target else [])
            + (extra_make_args or []),
            env=env,
        )


def FindExecutableInDir(path: pathlib.Path) -> pathlib.Path:
    """Find an executable file in a directory."""
    exes = [f for f in path.iterdir() if f.is_file() and os.access(f, os.X_OK)]
    if len(exes) != 1:
        raise EnvironmentError(
            f"Expected a single executable, found {len(exes)}")
    return exes[0]


class _BenchmarkSuite(object):
    """Abstract base class for a GPGPU benchmark suite.

    A benchmark suite provides two methods: ForceOpenCLEnvironment(), which forces
    the benchmarks within the suite to execute on a given device, and Run(), which
    executes the benchmarks and produces run logs. Example usage:

            gpu_log_observers = [SomeObserver()]
            cpu_log_observers = [SomeObserver()]
            with SomeBenchmarkSuite() as bs:
                    bs.ForceOpenCLEnvironment('gpu')
                    bs.Run([gpu_log_observers])
                    bs.ForceOpenCLEnvironment('cpu')
                    bs.Run([cpu_log_observers])
                    bs.Run([cpu_log_observers])
    """

    def __init__(self):
        if self.name not in config.BENCHMARK_SUITE_NAMES:
            raise ValueError(f"Unknown benchmark suite: {self.name}")

        self._env = None
        self._input_files = config.BMARK_PATH / self.name
        self._mutable_location = None
        self._observers = None

    def __enter__(self) -> pathlib.Path:
        prefix = f"benchmarks_gpgpu_{self.name}"
        self._mutable_location = pathlib.Path(tempfile.mkdtemp(prefix=prefix))
        fs.cp(self._input_files, self._mutable_location)
        return self

    def __exit__(self, *args):
        fs.rm(self._mutable_location)
        self._mutable_location = None

    @property
    def path(self):
        """Return the path of the mutable copy of the benchmark sources."""
        if self._mutable_location is None:
            raise TypeError("Must be used as a context manager")
        return self._mutable_location

    def ForceOpenCLEnvironment(self, env: libcecl_pb2.OpenClDevice) -> None:
        """Force benchmarks to execute with the given environment."""
        self._env = env
        return self._ForceOpenCLEnvironment(env)

    @property
    def env(self) -> libcecl_pb2.OpenClDevice:
        return self._env

    def Run(self, observers: typing.List[BenchmarkRunObserver]) -> None:
        """Run benchmarks and log results to directory."""
        if self.env is None:
            raise TypeError("Must call ForceOpenCLEnvironment() before Run()")
        self._observers = observers
        ret = self._Run()
        self._observers = None
        return ret

    @contextlib.contextmanager
    def RunEnv(self, path: pathlib.Path) -> typing.Dict[str, str]:
        """Return an execution environment for a GPGPU benchmark."""
        with fs.chdir(path):
            yield libcecl_run.run_env(self.env)

    def _ExecToLogFile(
        self,
        executable: pathlib.Path,
        benchmark_name: str,
        command: typing.Optional[typing.List[str]] = None,
        dataset_name: str = "default",
        env: typing.Optional[typing.Dict[str, str]] = None,
    ) -> None:

        full_name = '.'.join([
            self.name,
            benchmark_name,
            dataset_name])

        if _PARTIAL_RERUN is not None and full_name not in _PARTIAL_RERUN:
            return
        """Run executable using runcecl script and log output."""
        logging.info('Executing %s:%s', self.name, benchmark_name)
        assert self._observers

        # Assemble the command to run.
        command = command or [str(executable)]
        extra_env = env or dict()

        with self.RunEnv(executable.parent) as os_env:
            # Add the additional environment variables.
            os_env.update(extra_env)
            print(f"Benchmark:{benchmark_name}, dataset:{dataset_name}")
            libcecl_log = libcecl_run.execute(
                command, self.env, os_env, record_outputs=_RECORD_OUTPUTS)
            log = gpgpu_pb2.BenchmarkRun(
                hostname=_HOSTNAME,
                device_name=self.env.device_name,
                benchmark_suite=self.name,
                benchmark_name=benchmark_name,
                dataset_name=dataset_name,
                run=libcecl_log,
            )

            should_continue = True
            for observer in self._observers:
                should_continue &= observer.OnBenchmarkRun(log)

            if not should_continue:
                logging.info('Stopping benchmarking on request of observer(s)')
                raise BenchmarkInterrupt

    # Abstract attributes that must be provided by subclasses.

    @property
    def name(self) -> str:
        raise NotImplementedError("abstract property")

    @property
    def benchmarks(self) -> typing.List[str]:
        """Return a list of all benchmark names."""
        raise NotImplementedError("abstract property")

    def _ForceOpenCLEnvironment(self, env: libcecl_pb2.OpenClDevice) -> None:
        """Set the given device type."""
        raise NotImplementedError("abstract method")

    def _Run(self) -> None:
        """Run the benchmarks."""
        raise NotImplementedError("abstract method")


class AmdAppSdkBenchmarkSuite(_BenchmarkSuite):
    """The AMD App SDK benchmarks.

    This is a subset of the App SDK example programs. They use a CMake build
    system. One caveat is that we have to use the OpenCL headers provided as
    part of the package, rather than the phd versions. The Ubunutu libglew-dev
    package is a build requirement.
    """

    @property
    def name(self):
        return "amd-app-sdk-3.0"

    @property
    def benchmarks(self) -> typing.List[str]:
        return [
            "AdvancedConvolution",
            "BinomialOption",
            "BitonicSort",
            "BlackScholes",
            "FastWalshTransform",
            "FloydWarshall",
            "Histogram",
            "MatrixMultiplication",
            "MatrixTranspose",
            "MonteCarloAsian",
            "NBody",
            "PrefixSum",
            "Reduction",
            "ScanLargeArrays",
            "SimpleConvolution",
            "SobelFilter",
        ]

    def _ForceOpenCLEnvironment(self, env: libcecl_pb2.OpenClDevice):
        RewriteClDeviceType(env, self.path / "samples/opencl/cl/1.x")

        for benchmark in self.benchmarks:
            # Clean any existing builds.
            if (self.path / f"samples/opencl/cl/1.x/{benchmark}/Makefile").is_file():
                Make("clean", self.path / "samples/opencl/cl/1.x" / benchmark)

        # Delete all CMake generated files.
        CheckCall(
            [
                "find",
                self.path / "samples/opencl/cl/1.x",
                "-iwholename",
                "*cmake*",
                "-not",
                "-name",
                "CMakeLists.txt",
                "-delete",
            ]
        )

        for benchmark in self.benchmarks:
            with MakeEnv(
                self.path / f"samples/opencl/cl/1.x/{benchmark}", opencl_headers=False
            ) as env:
                env["CFLAGS"] = f'{env["CFLAGS"]} -isystem {self.path}/include'
                env["CXXFLAGS"] = f'{env["CXXFLAGS"]} -isystem {self.path}/include'

                logging.debug('Building %s:%s', self.name, benchmark)
                CheckCall(["cmake", "."], env=env)
                CheckCall(
                    ["make", "-j", _WORKERS_COUNT, "VERBOSE=1"], env=env
                )

    def _Run(self):
        for benchmark in self.benchmarks:
            executable = (
                self.path
                / "samples/opencl/cl/1.x"
                / benchmark
                / "bin/x86_64/Release"
                / benchmark
            )
            self._ExecToLogFile(executable, benchmark)


class NasParallelBenchmarkSuite(_BenchmarkSuite):
    """The NAS benchmark suite."""

    @property
    def name(self):
        return "npb-3.3"

    @property
    def benchmarks(self) -> typing.List[str]:
        return [
            "BT",
            "CG",
            "EP",
            "FT",
            # "IS", # PP: Fails verification, produces too many invocations
            # "LU", # PP: Fails verification, produces too many invocations
            "MG",
            "SP",
        ]

    def _ForceOpenCLEnvironment(self, env: libcecl_pb2.OpenClDevice):
        Make("clean", self.path)
        Make("suite", self.path)

    def _Run(self):
        for benchmark in self.benchmarks:
            for dataset in ["S", "W", "A", "B", "C"]:
                executable = self.path / f"bin/{benchmark.lower()}.{dataset}.x"
                # TODO(cec): Fix a handful of build errors which prevent all
                # executables from being compiled.
                if not executable.is_file():
                    continue
                self._ExecToLogFile(
                    executable,
                    f"{benchmark.lower()}.{dataset}",
                    env={
                        "OPENCL_DEVICE_TYPE": (
                            "GPU" if self.env.device_type.lower() == "gpu" else "CPU"
                        )
                    },
                    dataset_name=dataset,
                    command=[executable, f"../{benchmark}"],
                )


class NvidiaBenchmarkSuite(_BenchmarkSuite):
    """NVIDIA GPU SDK."""

    @property
    def name(self):
        return "nvidia-4.2"

    @property
    def benchmarks(self) -> typing.List[str]:
        return [
            # "BlackScholes", (PP: Wrong result on Intel)
            "ConvolutionSeparable",
            "DCT8x8",
            # "DXTCompression", (PP: Wrong result on Intel)
            "DotProduct",
            "FDTD3d",
            # "HiddenMarkovModel", (PP: Wrong result on Intel)
            "MatVecMul",
            "MatrixMul",
            # "MersenneTwister", (PP: Wrong result on Intel)
            # "RadixSort", (PP: Wrong result on Intel)
            # "Reduction", (PP: Wrong result on Intel)
            "Scan",
            "VectorAdd",
        ]

    def _ForceOpenCLEnvironment(self, env: libcecl_pb2.OpenClDevice):
        RewriteClDeviceType(env, self.path / "OpenCL/src")
        Make("clean", self.path / "OpenCL")
        Make(None, self.path / "OpenCL")

    def _Run(self):
        for benchmark in self.benchmarks:
            executable = self.path / f"OpenCL/bin/linux/release/ocl{benchmark}"
            self._ExecToLogFile(executable, benchmark)


class ParboilBenchmarkSuite(_BenchmarkSuite):
    """Parboil benchmark suite."""

    @property
    def name(self):
        return "parboil-0.2"

    @property
    def benchmarks(self) -> typing.List[str]:
        return [
            "bfs",
            "cutcp",
            "histo",
            "lbm",
            "mri-gridding",
            "mri-q",
            "sad",
            "sgemm",
            "spmv",
            "stencil",
            # "tpacf", (PP): Wrong result
        ]

    @property
    def benchmarks_and_datasets(self):
        return [
            ("bfs", "1M"),
            ("bfs", "NY"),
            ("bfs", "SF"),
            ("bfs", "UT"),
            ("cutcp", "large"),
            ("cutcp", "small"),
            ("histo", "default"),
            ("histo", "large"),
            ("lbm", "long"),
            ("lbm", "short"),
            ("mri-gridding", "small"),
            ("mri-q", "large"),
            ("mri-q", "small"),
            ("sad", "default"),
            ("sad", "large"),
            ("sgemm", "medium"),
            ("sgemm", "small"),
            ("spmv", "large"),
            ("spmv", "medium"),
            ("spmv", "small"),
            ("stencil", "default"),
            ("stencil", "small"),
            #("tpacf", "large"),
            #("tpacf", "medium"),
            #("tpacf", "small"),
        ]

    def _ForceOpenCLEnvironment(self, env: libcecl_pb2.OpenClDevice):
        RewriteClDeviceType(env, self.path / "benchmarks")

        # Due to the large size of parboil benchmarks (> 900 MB uncompressed), we
        # ship compressed archives with per-benchmark datasets. These must be
        # decompressed. This must be done prior to building. Once decompressed,
        # we remove the compressed archives so that the unpacked archives are
        # re-used for the lifetime of this object.
        with fs.chdir(self.path / f"datasets"):
            for benchmark in self.benchmarks:
                dataset_archive = self.path / f"datasets/{benchmark}.tar.bz2"
                if dataset_archive.is_file():
                    logging.info('Unpacking datasets for %s:%s',
                                 self.name, benchmark)
                    CheckCall(["tar", "xjvf", dataset_archive])
                elif pathlib.Path(f"{dataset_archive}.part1").is_file():
                    logging.info('Unpacking datasets for %s:%s',
                                 self.name, benchmark)
                    CheckCall(
                        f"cat {dataset_archive}.part1 {dataset_archive}.part2 "
                        f"> {dataset_archive}",
                        shell=True,
                    )
                    pathlib.Path(f"{dataset_archive}.part1").unlink()
                    pathlib.Path(f"{dataset_archive}.part2").unlink()
                    CheckCall(["tar", "xjvf", dataset_archive])

                if dataset_archive.is_file():
                    dataset_archive.unlink()

        CheckCall(["find", self.path, "-name", "*.o", "-delete"])
        with MakeEnv(self.path) as env:
            for benchmark in self.benchmarks:
                CheckCall(
                    ["python2", "./parboil", "compile", benchmark, "opencl_base"], env=env
                )

    def _Run(self):
        for benchmark, dataset in self.benchmarks_and_datasets:
            self._ExecToLogFile(
                self.path / "parboil",
                f"{benchmark}.{dataset}",
                            command=[
                                "python2",
                                "./parboil",
                                "run",
                                benchmark,
                                "opencl_base",
                                dataset,
                            ],
            )


class PolybenchGpuBenchmarkSuite(_BenchmarkSuite):
    """PolyBench/GPU 1.0 Benchmarks."""

    @property
    def name(self):
        return "polybench-gpu-1.0"

    @property
    def benchmarks(self) -> typing.List[str]:
        return [
            "2DCONV",
            "2MM",
            "3DCONV",
            "3MM",
            "ATAX",
            "BICG",
            "CORR",
            "COVAR",
            # Bad: 'FDTD-2D',
            "GEMM",
            "GESUMMV",
            "GRAMSCHM",
            "MVT",
            "SYR2K",
            "SYRK",
        ]

    def _ForceOpenCLEnvironment(self, env: libcecl_pb2.OpenClDevice):
        RewriteClDeviceType(env, self.path / "OpenCL")
        for benchmark in self.benchmarks:
            logging.info('Building benchmark %s', benchmark)
            Make("clean", self.path / "OpenCL" / benchmark)
            Make("all", self.path / "OpenCL" / benchmark)

    def _Run(self):
        for benchmark in self.benchmarks:
            executable = FindExecutableInDir(self.path / "OpenCL" / benchmark)
            self._ExecToLogFile(executable, benchmark)


class RodiniaBenchmarkSuite(_BenchmarkSuite):
    """Rodinia Benchmark Suite 3.1.

    The University of Virginia Rodinia Benchmark Suite is a collection of parallel
    programs which targets heterogeneous computing platforms with both multicore
    CPUs and GPUs.

    Copyright (c)2008-2011 University of Virginia.

    For further details, see:

                    S. Che, M. Boyer, J. Meng, D. Tarjan, J. W. Sheaffer, Sang-Ha Lee and
                    K. Skadron. "Rodinia: A Benchmark Suite for Heterogeneous Computing".
                    IISWC, 2009.
    """

    @property
    def name(self) -> str:
        return "rodinia-3.1"

    @property
    def benchmarks(self) -> typing.List[str]:
        return [
            "b_tree",
            "backprop",
            "bfs",
            "cfd",
            # "dwt2d", # (PP): SeqFault somewhere in the kernel
            "gaussian",
            "heartwall",
            "hotspot",
            # 'hotspot3D',  # TODO(cec): Fails to build.
            "hybridsort",
            "kmeans",
            "lavaMD",
            "leukocyte",
            "lud",
            "myocyte",
            "nn",
            "nw",
            "particlefilter",
            "pathfinder",
            "srad",
            "streamcluster",
        ]

    def _ForceOpenCLEnvironment(self, env: libcecl_pb2.OpenClDevice):
        RewriteClDeviceType(env, self.path / "opencl")

        logging.info('Building Rodinia benchmarks')

        # This directory is not generated by the Makefile, but is needed by it.
        (self.path / "bin/linux/opencl").mkdir(parents=True, exist_ok=True)

        # Copy and unpack the data sets, which come from a data-only file tree.
        logging.info('Unpacking compressed data archives')
        fs.cp(config.RODINIA_DATA_ROOT, self.path / "data")
        #Make("all", self.path / "data")

        Make("OCL_clean", self.path)
        Make("OPENCL", self.path)
        # TODO(cec): Original script then deleted the opencl/hotspot3D/3D file. Is
        # it not working?

    def _Run(self):
        for benchmark in self.benchmarks:
            executable = self.path / "opencl" / benchmark / "run"
            self._ExecToLogFile(executable, benchmark,
                                command=["bash", "./run"])


class ShocBenchmarkSuite(_BenchmarkSuite):
    """SHOC Benchmarks."""

    @property
    def name(self):
        return "shoc-1.1.5"

    @property
    def benchmarks(self) -> typing.List[str]:
        return [
            "BFS",
            "FFT",
            "GEMM",
            "MD",
            "MD5Hash",
            "Reduction",
            "Scan",
            "Sort",
            "Spmv",
            "Stencil2D",
            "Triad",
            "S3D",
        ]

    def _ForceOpenCLEnvironment(self, env: libcecl_pb2.OpenClDevice):
        RewriteClDeviceType(env, self.path / "src/opencl")
        if (self.path / "Makefile").is_file():
            Make("distclean", self.path)

        with fs.chdir(self.path):
            CheckCall(["./configure"])

        Make(None, self.path / "src/common")
        Make(None, self.path / "src/opencl")

    def _Run(self):
        for benchmark in self.benchmarks:
            level1 = self.path / \
                f"src/opencl/level1/{benchmark.lower()}/{benchmark}"
            level2 = self.path / \
                f"src/opencl/level2/{benchmark.lower()}/{benchmark}"
            if level1.is_file():
                executable = level1
            else:
                executable = level2
            self._ExecToLogFile(executable, benchmark)


class ClgenBenchmarkSuite(_BenchmarkSuite):
    """Clgen Benchmarks."""

    @property
    def name(self):
        return "clgen"

    @property
    def benchmarks(self) -> typing.List[str]:
        with open(self.path / 'kernel_sizes.txt') as f:
            return sorted([line.strip().split()[0] for line in f])

    @property
    def benchmarks_and_sizes(self) -> typing.List[typing.Tuple[str, int, int]]:
        exps = []
        with open(self.path / 'kernel_sizes.txt') as f:
            for line in f:
                line = line.strip().split()
                kernel = line[0]
                for idx in range(1, len(line), 2):
                    exps.append((kernel, int(line[idx]), int(line[idx+1])))
        return exps

    def _ForceOpenCLEnvironment(self, env: libcecl_pb2.OpenClDevice):
        RewriteClDeviceType(env, self.path / 'kernels')
        Make("clean", self.path)
        Make("all", self.path)

    def _Run(self):
        for benchmark, gsize, lsize in self.benchmarks_and_sizes:
            gsize_k = gsize // 1024
            self._ExecToLogFile(
                self.path / 'driver',
                f'{benchmark}.{gsize_k}K',
                            command=[
                                '/usr/bin/timeout', '--signal=9', '10',
                                './driver', f'kernels/{benchmark}.cl',
                                            'A', str(gsize), str(lsize)],
            )


# A map of benchmark suite names to classes.
BENCHMARK_SUITES = {
    bs().name: bs for bs in _BenchmarkSuite.__subclasses__()
}


def ResolveBenchmarkSuiteClassesFromNames(names: typing.List[str]):
    benchmark_suite_classes = []
    for name in names:
        try:
            cls = BENCHMARK_SUITES[name]
        except KeyError:
            raise UsageError(
                f"Unknown benchmark suite: '{name}'. "
                f"Legal values: {BENCHMARK_SUITES.keys()}"
            )

        benchmark_suite_classes.append(cls)

    return benchmark_suite_classes


def main(bmark_suites, gpgpu_envs, repeats, logdir):
    """Main function."""
    d = datetime.datetime.utcnow()
    d = d.replace(microsecond=int(d.microsecond / 1000) * 1000)
    timestamp = int(d.strftime('%s%f')[:-3])
    runlog_path = config.RUNLOGS_PATH / f'gpgpu.{timestamp}.log'
    logging.basicConfig(filename=runlog_path,
                        filemode='w', level=logging.DEBUG)

    # Get the OpenCL environments.
    envs = all_envs()
    envs = [env for name in gpgpu_envs for env in envs if env.name == name]

    # Create the observers that will process the results..
    observers = [
        DumpLogProtoToFileObserver(pathlib.Path(logdir), '.pb')
    ]

    if _FAIL_ON_ERROR:
        observers.append(FailOnErrorObserver())

    for benchmark_suite_class in ResolveBenchmarkSuiteClassesFromNames(bmark_suites):
        with benchmark_suite_class() as benchmark_suite:
            for env in envs:
                logging.info('Building and running %s on %s',
                             benchmark_suite.name, env.name)
                benchmark_suite.ForceOpenCLEnvironment(env)
                for i in range(repeats):
                    logging.info('Starting run %d of %s',
                                 i + 1, benchmark_suite.name)
                    benchmark_suite.Run(observers)


if __name__ == "__main__":
    env_names = ['GPU|NVIDIA CUDA|Quadro GP100|384.111|1.2']
    main(config.BENCHMARK_SUITE_NAMES[2:3], env_names, 1, config.LOGS_PATH)
