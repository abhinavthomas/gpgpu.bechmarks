#!/usr/bin/env python3

import re
import sys
import random
import subprocess
from pathlib import Path
import hashlib
import config

OPT = Path('/hdd/abhinav/llvm-project/build/bin/opt')
LLC = Path('/hdd/abhinav/llvm-project/build/bin/llc')

PASSES_FILE = Path('passes.txt')  # Where the valid passes will be saved
COMBOS_FILE = Path('passes_combos.txt')

TESTIN_LL = config.BASE_PATH / 'temp_src_code.ll'  # Bitcode to use as input for opt
TESTOUT_LL = config.BASE_PATH / 'temp_src_code_opt.ll'  # opt output bitcode
TESTOUT_PTX = config.BASE_PATH / 'temp_src_code.ptx'  # output ptx

_TEST = True 

if _TEST:
    RANDOM_COMBOS_NUM = 10  # The size of the initial seed of randomly generated passes
    FINAL_COMBOS_NUM = 20  # How many combinations to generate in total
    COMBO_LEN = 10
else:
    RANDOM_COMBOS_NUM = 200  # The size of the initial seed of randomly generated passes
    FINAL_COMBOS_NUM = 5000  # How many combinations to generate in total
    COMBO_LEN = 50


class Version(object):
    '''Very simple class representing a distinct program version of TESTIN_LL.
    Provides methods for optimizing the bitcode, generating the ptx, and
    calculating the version's hash. Extend as needed'''

    def __init__(self, passes):
        self.passes = passes
        self.md5hash = None
        self.ptx = None
        self.ir = None

        self._generate()
        if not self.valid:
            return

        self._calculate_hash()
        self._load_ir()
        self._load_ptx()

    def __hash__(self):
        assert self.md5hash is not None
        return hash(self.md5hash)

    def __eq__(self, other):
        return self.md5hash == other.md5hash

    def _optimize(self):
        passes_txt = [f'--{p}' for p in self.passes]
        cmd_opt = [OPT, '-O2', '--mcpu=sm_60'] + \
            passes_txt + [TESTIN_LL, '-o', TESTOUT_LL, '-S']
        try:
            res = subprocess.run(cmd_opt, check=True, universal_newlines=True)
        except subprocess.CalledProcessError as ex:
            #print(f'Failed1: {self.passes}')
            return False
        return True

    def _compile(self):
        cmd_llc = [LLC, '-O2', '--mcpu=sm_60', TESTOUT_LL, '-o', TESTOUT_PTX]
        try:
            res = subprocess.run(cmd_llc, check=True, universal_newlines=True)
        except subprocess.CalledProcessError as ex:
            #print(f'Failed2: {self.passes}')
            return False
        return True

    def _generate(self):
        if not self._optimize():
            self.valid = False
            return
        if not self._compile():
            self.valid = False
            return
        self.valid = True

    def _calculate_hash(self):
        hash_md5 = hashlib.md5()
        with open(TESTOUT_PTX, 'rb') as f:
            for chunk in iter(lambda: f.read(4096), b""):
                hash_md5.update(chunk)
        self.md5hash = hash_md5.hexdigest()

    def _load_ir(self):
        with open(TESTOUT_LL) as f:
            self.ir = f.read()

    def _load_ptx(self):
        with open(TESTOUT_PTX) as f:
            self.ptx = f.read()


def load_passes_from_opt():
    passes = []
    cmd = [OPT, '--help-list']
    res = subprocess.run(cmd, stdout=subprocess.PIPE, universal_newlines=True)

    in_optimizations_list = False
    for line in res.stdout.split('\n'):
        if in_optimizations_list:
            m = re.match(r'^      \-\-(\S+).*$', line)
            if m is None:
                in_optimizations_list = False
                continue
            passes.append(m.group(1))

        elif line.find('Optimizations available') > -1:
            in_optimizations_list = True

    return passes


def load_passes_file():
    with open(PASSES_FILE) as fin:
        passes = [line.strip() for line in fin]
    return passes


def update_passes_file(passes):
    with open(PASSES_FILE, 'w') as fout:
        for p in passes:
            fout.write(f'{p}\n')


def static_filter(passes):
    forbidden_keywords = [
        'X86', 'x86',  # x86 specific
        'aa-eval',  # just a report
        'aarch64', 'arm',  # ARM specific
        'amdgpu',  # AMD GPU specific
        'amode',
        'asan',  # Address sanitizer passes
        'avr',  # AVR microcontroller
        'bpf',  # Berkeley Packet Filter
        'deadarghaX0r',  # Marked "do not use"
        'debug',  # Debug info passes
        'dfsan',  # Dataflow Sanitizer
        'dot',  # Print to dot file passes
        'falkor',  # Some qualcomm ARM-based chip
        'hexagon',  # Hexagon related
        'hwasan',  # HWAddressSanitizer
        'hwloops',  # Hexagon specific pass
        'irtranslator',  # Pass for lowering IR
        'lint',  # linter pass
        'msan',  # Memory sanitizer
        'micromips', 'mips',  # MIPS specific
        'objc',  # Objective-C specific
        'r600', 'packets', 'vec-merger',
        'pgo',  # Profile guided optimization, not useful here
        'ppc',  # PowerPC
        'print',  # Print passes
        'profile',
        'riscv',  # RISC-V specific
        'sancov',
        'si-',
        'sink',
        'targetlibinfo',
        'strip',
        'stack-tagging',
        't2-reduce-size',
        'transform-warning',
        'tsan', 'verify', 'view',
        'wasm', 'wine',
        'write-bitcode',
        'insert-gcov-profiling',
        'instrprof']
    filtered = []
    for p in passes:
        reject = False
        for key in forbidden_keywords:
            if p.startswith(key):
                reject = True
                break
        if not reject:
            filtered.append(p)
    return filtered


def dynamic_filter(passes):
    filtered = []
    for p in passes:
        v = Version([p])
        if v.valid:
            filtered.append(p)
    return filtered


################################################################################
################################################################################
# PASSES COMBINATIONS
################################################################################
################################################################################

def generate_random_combinations(passes):
    '''Just create lists of randomly selected passes and keep the ones that
      a) do not crash the compiler
      b) generate ptx files we have not seen before'''
    combos = {}
    while len(combos) < RANDOM_COMBOS_NUM:
        new_combo = random.choices(passes, k=COMBO_LEN)
        v = Version(new_combo)
        if not v.valid:
            continue

        # The hash of v depends on the text of the output ptx file.
        # If the hash of v exists in combos, this means we have
        #   generated an identical ptx earlier.
        # Only add new_combo to combos, if we haven't seen this ptx
        #   before or the number of passes is smaller for the new_combo
        if v not in combos or len(combos[v]) > len(new_combo):
            combos[v] = new_combo
            print(f'Added {len(combos)} combinations')
    return combos


def reduce_combinations(combos):
    '''The combinations of passes may contain passes that do nothing
    Let's minimize the number of passes in each combo by removing
    redundant passes'''
    minimized = {}
    for v, combo in combos.items():
        modified = True
        while modified:
            modified = False
            # In each iteration remove one pass
            for idx in range(len(combo)):
                new_combo = combo.copy()
                del new_combo[idx]

                # Generate the ptx
                new_v = Version(new_combo)
                if not new_v.valid:
                    continue

                # Same hash means same ptx.
                # Repeat reduction starting from new_combo
                if new_v == v:
                    v = new_v
                    combo = new_combo
                    modified = True
                    break

        minimized[v] = combo
        print(f'Reduced combo from {len(combos[v])} to {len(combo)}')

    return minimized


def repeat_combinations(combos):
    '''Append combinations to other combinations'''
    combos_list = list(combos.values())
    for idx in range(len(combos_list)):
        for jdx in range(len(combos_list)):
            new_combo = combos_list[idx] + combos_list[jdx]

            # Generate the ptx
            new_v = Version(new_combo)
            if not new_v.valid:
                continue

            # Same hash means same ptx.
            if new_v in combos:
                continue
            combos[new_v] = new_combo
            if len(combos) == FINAL_COMBOS_NUM:
                return combos
    return combos


def generate_combinations(passes):
    '''Start from a random seed of passes and keep reducing
    and repeating until we have any combinations'''
    combos = generate_random_combinations(passes)
    combos = reduce_combinations(combos)

    while len(combos) < FINAL_COMBOS_NUM:
        combos = repeat_combinations(combos)
        combos = reduce_combinations(combos)
    return combos


def main():
    passes = []
    if PASSES_FILE.exists():
        passes = load_passes_file()
        print(f'Loaded {len(passes)} passes from file')

    if not passes:
        passes = load_passes_from_opt()
        print(f'Loaded {len(passes)} passes from the opt help response')
        update_passes_file(passes)

    passes = static_filter(passes)
    print(f'Static Filter: {len(passes)} passes left')
    passes = dynamic_filter(passes)
    print(f'Dynamic Filter: {len(passes)} passes left')
    update_passes_file(passes)

    pass_combinations = generate_combinations(passes)
    with open(COMBOS_FILE, 'w') as fout:
        for v, combo in pass_combinations.items():
            txt = ' '.join([f'--{p}'for p in combo])
            fout.write(f'{txt}\n')

    return pass_combinations


if __name__ == '__main__':
    main()
