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
import json
import pandas as pd
from google.protobuf.json_format import MessageToDict

import config
import gpgpu_pb2

CLANG_BINARY = '/hdd/abhinav/llvm-project/build/bin/clang'
LLVM_EXTRACT_BINARY = '/hdd/abhinav/llvm-project/build/bin/llvm-extract'

_EXT = '.ll'  # change to '.ll' for text format
_CLANG_BIN = '/hdd/abhinav/llvm-project/build/bin/clang'


def output_file(fname):
    return fname.with_suffix(_EXT)


def build_cmd(fname, build_options):
    fname_out = output_file(fname)
    ext_type = '-S' if _EXT == '.ll' else ''
    cmd = f'{_CLANG_BIN} -c -x cl -cl-std=CL2.0 -emit-llvm {ext_type} -Xclang -target nvptx64-nvidia-nvcl -finclude-default-header -D__OPENCL_VERSION__ {build_options} {fname} -o {fname_out}'
    return cmd.split()


def build_cmd_ext(ll_file, funcname, outfilename):
    ext_type = '-S' if _EXT == '.ll' else ''
    cmd = f'{LLVM_EXTRACT_BINARY} {ll_file} -func {funcname} {ext_type} -o {outfilename}'
    return cmd.split()


def generate_corpus():
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
        benchmarks = []
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

                    fname_out = output_file(fname)
                    for invocation in benchmark_result.get('run').get('kernelInvocation'):
                        kernel_name = invocation.get('kernelName')
                        exct_output_file = basepath / \
                            f'{bmark}.{idx}.{kernel_name}.ll'
                        cmd = build_cmd_ext(
                            fname_out, kernel_name, exct_output_file)
                        try:
                            # Run and trigger an exception if it is unsuccessful
                            p = subprocess.run(cmd, check=True)
                            print(exct_output_file)
                            with open(exct_output_file, 'r') as fin:
                                ir = fin.read()
                                size = len(fin.read())
                                print(f'{exct_output_file}:\t {size}')
                        except subprocess.CalledProcessError as e:
                            # print("error",bmark,e)
                            p.stderr
                            raise e
                        bench_mark = {**invocation, 'build_options': build_options,
                                      "ir":  ir, 'source': source,
                                      'hostname': benchmark_result.get('hostname'),
                                      'deviceName': benchmark_result.get('deviceName'),
                                      'benchmarkSuite': benchmark_result.get('benchmarkSuite'),
                                      'benchmarkName': bmark,
                                      'datasetName': benchmark_result.get('datasetName')}
                        benchmarks.append(bench_mark)
            except Exception as e:
                failed.append(str(path))
            else:
                sucess += 1
    print(f"Total {sucess} sucess out of {len(paths)}")
    print(f"{len(failed)} items failed. And they are: ")
    return benchmarks


if __name__ == '__main__':
    df = pd.DataFrame(generate_corpus())
    df.to_json('ir_ds.json', 'records')
