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
import json
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

IR2VEC_BIN = '/hdd/abhinav/IR2Vec/build/bin/ir2vec'
_EXT = '.vec'  # The extension for generated flow aware vectors
SEED_EMBEDDING_PATH = "/hdd/abhinav/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt"


def output_file(fname):
    return fname.with_suffix(_EXT)


def build_cmd(fname):
    fname_out = output_file(fname)
    cmd = f'{IR2VEC_BIN} -fa -vocab {SEED_EMBEDDING_PATH} -level p -o {fname_out} {fname}'
    return cmd.split(), fname_out


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
        benchmarks = []
        for i, path in enumerate(paths):
            try:
                print(f"Trying {path}, {i+1}/{len(paths)}")
                with open(path, 'rb') as fp:
                    benchmark_results.ParseFromString(fp.read())
                    benchmark_result = MessageToDict(benchmark_results)
                    source = benchmark_result.get('run').get('ir')
                    build_options = list(benchmark_result.get(
                        'run').get('openclBuildOptions'))
                    bmark = benchmark_result.get('benchmarkName')

                    # Write the IR to a file in the temp directory
                    fname = basepath / f'{bmark}.{idx}.ll'
                    with open(fname, 'w') as fsrc:
                        fsrc.write(source)
                    # Generate the command line for compiling the kernel
                    cmd, fname_out = build_cmd(fname)
                    print(f"Generating vectors {fname} to {fname_out}")
                    try:
                        # Run and trigger an exception if it is unsuccessful
                        p = subprocess.run(cmd, check=True)
                    except subprocess.CalledProcessError as e:
                        # print("error",bmark,e)
                        p.stderr
                        raise e
                    else:
                        # if success read the vector from the file
                        with open(fname_out) as fp:
                            irvec = list(
                                map(float, fp.read().split('\t')[:300]))

                    for invocation in benchmark_result.get('run').get('kernelInvocation'):
                        kernel_name = invocation.get('kernelName')
                        bench_mark = {**invocation, 'build_options': build_options,
                                      "ir": irvec, 'opt': [], "kernelname": kernel_name,
                                      'hostname': benchmark_result.get('hostname'),
                                      'deviceName': benchmark_result.get('deviceName'),
                                      'benchmarkSuite': benchmark_result.get('benchmarkSuite'),
                                      'benchmarkName': bmark, 'datasetName': benchmark_result.get('datasetName')}
                        benchmarks.append(bench_mark)
                    # Iterate through opt runs and exctract the vectors
                    try:
                        for opt_run in benchmark_result.get('run').get('optRuns'):
                            invocations = opt_run.get('kernelInvocation')
                            if not invocations:
                                continue
                            ir = opt_run.get('ir')
                            # Write the IR to a file in the temp directory
                            with open(fname, 'w') as fsrc:
                                fsrc.write(ir)
                            try:
                                # Run and trigger an exception if it is unsuccessful
                                p = subprocess.run(cmd, check=True)
                            except subprocess.CalledProcessError as e:
                                # print("error",bmark,e)
                                print(p.stderr)
                                raise e
                            else:
                                # if success read the vector from the file
                                with open(fname_out) as fp:
                                    irvec = list(
                                        map(float, fp.read().split('\t')[:300]))

                            for invocation in invocations:
                                kernel_name = invocation.get('kernelName')
                                bench_mark = {**invocation,
                                              'build_options': build_options,
                                              'ir':  irvec, "kernelname": kernel_name,
                                              'opt': opt_run.get('optPasses').split() if opt_run.get('optPasses') else [],
                                              'hostname': benchmark_result.get('hostname'),
                                              'deviceName': benchmark_result.get('deviceName'),
                                              'benchmarkSuite': benchmark_result.get('benchmarkSuite'),
                                              'benchmarkName': bmark,
                                              'datasetName': benchmark_result.get('datasetName')}
                                benchmarks.append(bench_mark)
                    except Exception as e:
                        print(e)
                        failed.append(str(path)+str(opt_run.get('optPasses')))
            except Exception as e:
                print(e)
                failed.append(str(path))
            else:
                sucess += 1
                if sucess % 50 == 0:
                    yield benchmarks
                    benchmarks = []

    print(f"Total {sucess} sucess out of {len(paths)}")
    print(f"{len(failed)} items failed. And they are: ")


if __name__ == '__main__':
    for i, d in enumerate(generate_corpus()):
        df = pd.DataFrame(d)
        df.to_parquet(f'data/ir_ds.{i}.pq')
