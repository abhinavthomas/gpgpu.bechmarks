#!/usr/bin/env python3

import pathlib
import tempfile
import subprocess
import sqlite3
import shutil

_EXT = '.ll' # change to '.ll' for text format
_CLANG_BIN = '/usr/local/bin/clang'

def output_file(fname):
    return fname.with_suffix(_EXT)

def build_cmd(fname, build_options):
    fname_out = output_file(fname)
    ext_type = '-S' if _EXT == '.ll' else ''
    cmd = f'{_CLANG_BIN} -c -x cl -emit-llvm {ext_type} -cl-std=CL2.0 -Xclang -finclude-default-header -D__OPENCL_VERSION__ {build_options} {fname} -o {fname_out}'
    return cmd.split()

con = sqlite3.connect('kernels.db')
cur = con.cursor()
#cur.execute('''CREATE TABLE kernels (bmark_suite TEXT, bmark_name TEXT, dataset_name TEXT, source TEXT, options TEXT, bitcode MEDIUMBLOB)''')

# Compile all kernels in a temporary directory. It will be automatically deleted on exit
with tempfile.TemporaryDirectory(prefix='opencl_build_exps') as d:
    idx = 0
    basepath = pathlib.Path(d)
    headers = pathlib.Path('headers')
    for fname in headers.glob('*.h'):
        shutil.copy(fname, basepath)

    for row in cur.execute('''SELECT bmark_suite, bmark_name, source, options FROM kernels'''):
        bmark = row[1]
        source = row[2]
        build_options = row[3]

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
            with open(fname_out, 'rb') as fin:
                size = len(fin.read())
                print(f'{fname_out}:\t {size}')

        except subprocess.CalledProcessError:
            print(bmark)
            break
        idx += 1





con.close()

