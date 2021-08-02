#!/usr/bin/env python3

# Copyright 2021 Abhinav Thomas <abhinavthomas@gmail.com>.
#
# This file is derived from CLgen.
#
# CLgen is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# CLgen is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with CLgen.  If not, see <http://www.gnu.org/licenses/>.
#
import pathlib
import re
import shutil
import subprocess
import tempfile
from multiprocessing import Pool
from typing import List

import pandas as pd
from google.protobuf.json_format import MessageToDict

import config
import gpgpu_pb2

CLANG_BINARY = '/hdd/abhinav/llvm-project/build/bin/clang'
CLGEN_REWRITER = config.BASE_PATH / 'clgen-rewriter'
CLANG_FORMAT = config.BASE_PATH / 'clang-format'
SHIMFILE = config.BASE_PATH / 'opencl-shim.h'

_INCLUDE_RE = re.compile(r'\w*#include ["<](.*)[">]')


def clang_cl_args() -> List[str]:
    """
    Get the Clang args to compile OpenCL.

    Returns
    -------
    List[str]
        Array of args.
    """
    # clang warnings to disable
    disabled_warnings = [
        'ignored-pragmas',
        'implicit-function-declaration',
        'incompatible-library-redeclaration',
        'macro-redefined',
    ]

    args = [
        f'-I{config.OPENCL_HEADERS_DIR}',
        '-target', 'nvptx64-nvidia-nvcl',
        '-ferror-limit=0',
        '-xcl'
    ] + ['-Wno-{}'.format(x) for x in disabled_warnings]

    args += ['-include', SHIMFILE]

    return args


_EXT = '.ll'  # change to '.ll' for text format
_CLANG_BIN = '/hdd/abhinav/llvm-project/build/bin/clang'


def output_file(fname):
    return fname.with_suffix(_EXT)


def build_cmd(fname, build_options):
    fname_out = output_file(fname)
    ext_type = '-S' if _EXT == '.ll' else ''
    cmd = f'{_CLANG_BIN} -c -x cl -cl-std=CL2.0 -emit-llvm {ext_type} -Xclang -finclude-default-header -D__OPENCL_VERSION__ {build_options} {fname} -o {fname_out}'
    return cmd.split()


def generate_corpus():
    l = []
    benchmark_results = gpgpu_pb2.BenchmarkRun()
    paths = set(config.LOGS_PATH.rglob('*.pb')) - \
        set(config.LOGS_PATH.rglob('*ERROR.pb'))
    failed = []
    sucess = 0
    # Compile all kernels in a temporary directory. It will be automatically deleted on exit
    with tempfile.TemporaryDirectory(prefix='opencl_build_exps') as d:
        idx = 0
        basepath = pathlib.Path(d)
        headers = pathlib.Path('headers')
        for fname in headers.glob('*.h'):
            shutil.copy(fname, basepath)
        for path in paths:
            try:
                with open(path, 'rb') as fp:
                    benchmark_results.ParseFromString(fp.read())
                    benchmark_result = MessageToDict(benchmark_results)
                    source = '\n'.join(benchmark_result.get(
                        'run').get('openclProgramSource'))
                    build_options = ' '.join(benchmark_result.get(
                        'run').get('openclBuildOptions'))
                    bmark = benchmark_result.get('benchmarkName')

                    # Write the source to a file in the temp directory
                    fname = basepath / f'{bmark}.{idx}.cl'
                    with open(fname, 'w') as fsrc:
                        fsrc.write(source)
                    
                    # Generate the command line for compiling the kernel
                    cmd = build_cmd(fname, build_options)
                    try:
                        # Run and trigger an exception if it is unsuccessful
                        subprocess.run(cmd, check=True)
                        # Read the output file and report its size
                        fname_out = output_file(fname)
                        print(fname_out)
                        with open(fname_out, 'rb') as fin:
                            ir = fin.read()
                            size = len(fin.read())
                            print(f'{fname_out}:\t {size}')
                    except subprocess.CalledProcessError as e:
                        #print("error",bmark,e)
                        raise e
                    for invocation in benchmark_result.get('run').get('kernelInvocation'):
                        invocation['hostname'] = benchmark_result.get(
                            'hostname')
                        invocation['deviceName'] = benchmark_result.get(
                            'deviceName')
                        invocation['benchmarkSuite'] = benchmark_result.get(
                            'benchmarkSuite')
                        invocation['benchmarkName'] = bmark
                        invocation['datasetName'] = benchmark_result.get(
                            'datasetName')
                        invocation['source'] = source
                        invocation['build_options'] = build_options
                        invocation["ir"] = ir
                        l.append(invocation)
            except Exception as e:
                failed.append(str(path))
            else:
                sucess += 1
    print(f"Total {sucess} sucess out of {len(paths)}")
    print(f"{len(failed)} items failed. And they are: ")
    return pd.DataFrame(l)


if __name__ == '__main__':
    df = generate_corpus()
    df.to_parquet('ir_ds.pq')
