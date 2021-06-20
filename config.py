import pathlib

BASE_PATH = pathlib.Path(__file__).parent.absolute()
BMARK_PATH = BASE_PATH / 'benchmarks'
RODINIA_DATA_ROOT = BMARK_PATH / 'rodinia-3.1/data'
PANDAS_PATH = BASE_PATH / 'results'
LOGS_PATH = BASE_PATH / 'logs'
RUNLOGS_PATH = BASE_PATH / 'runs'
KERNELDB_PATH = BASE_PATH / 'kernelDB'

OPENCL_HEADERS_DIR = pathlib.Path('/opt/intel/system_studio_2020/opencl/SDK/include')
LIBOPENCL_DIR = pathlib.Path('/opt/intel/system_studio_2020/opencl/SDK/lib64')

BENCHMARK_SUITE_NAMES = [
  "amd-app-sdk-3.0",
  "npb-3.3",
  "nvidia-4.2",
  "parboil-0.2",
  "polybench-gpu-1.0",
  "rodinia-3.1",
  "shoc-1.1.5",
  "clgen",
]

