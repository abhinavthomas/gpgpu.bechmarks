#!/usr/bin/env python3

import random

import numpy as np

_SAMPLES = 3

rng = np.random.default_rng()
sizes = dict()
with open('valid_sizes.txt') as f:
    for line in f:
        fields = line.strip().split()
        if len(fields) < 3:
            continue
        if len(fields) == 3:
            sizes[fields[0]] = (int(fields[1]), int(fields[2]))
        else:
            sizes[fields[0]] = (int(fields[2]), int(fields[-1]))


selected = dict()
for kernel, (min_size, max_size) in sizes.items():
    logmin, logmax = np.log2([min_size, max_size])
    gsizes = logmin + rng.random(_SAMPLES) * (logmax - logmin)
    gsizes = 1024 * np.ceil(np.power(2, gsizes))
    lsizes = rng.choice([8, 16, 32, 64, 128, 256, 512], _SAMPLES)
    selected[kernel] = list(zip(gsizes.astype(np.int), lsizes))


with open('kernel_sizes.txt', 'w') as f:
    for kernel in selected:
        string = ' '.join([f'{num1} {num2}' for num1,num2 in selected[kernel]])
        f.write(f'{kernel} {string}\n')


