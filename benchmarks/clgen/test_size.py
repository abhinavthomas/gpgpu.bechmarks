#!/usr/bin/env python3

import sys
import os
import re
import subprocess

sizes_k = [64, 128, 256, 512, 1024, 2048, 4096, 8192, 16*1024, 32*1024]

with open('valid.txt') as f:
    valid_kernels = [line.strip() for line in f]

valid_sizes = dict()

for idx, kernel in enumerate(valid_kernels):
    print(f'{idx} out of {len(valid_kernels)} : {kernel}')
    valid_sizes[kernel] = []
    for size_k in sizes_k:
        env = os.environ
        env['LIBCECL_PLATFORM'] = 'Intel(R) CPU Runtime for OpenCL(TM) Applications'
        env['LIBCECL_DEVICE'] = 'Intel(R) Xeon(R) CPU E5-2650 v2 @ 2.60GHz'
        env['LD_LIBRARY_PATH'] = '../../'
        env['DYLD_LIBRARY_PATH'] = '../../'
        env['CECL_EVENTS_0'] = 'ix86arch::UNHALTED_CORE_CYCLES'
        process = subprocess.run(['./driver', f'kernels/{kernel}.cl', 'A', str(size_k * 1024), '32'], stdout=subprocess.DEVNULL, stderr=subprocess.PIPE, universal_newlines=True, env=env)
        m = re.search(r'\[CECL\] clEnqueueNDRangeKernel ; A ; (\d+) ; (\d+) ; (\d+)', process.stderr)
        if m is None:
            print(f'Error {kernel}\t{size_k}')
            print(process.stderr)
            break
        runtime = int(m.group(3))
        if runtime > 5000000 and runtime < 2000000000:
            valid_sizes[kernel].append(size_k)
        if runtime > 500000000:
            break
    print(runtime)

with open('valid_sizes.txt', 'w') as f:
    for kernel in valid_kernels:
        sizes = valid_sizes[kernel]
        sizes = ' '.join([str(size) for size in sizes])
        f.write(f'{kernel} {sizes}\n')

