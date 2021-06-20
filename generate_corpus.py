#!/usr/bin/env python3

# Copyright 2016, 2017 Chris Cummins <chrisc.101@gmail.com>.
# Copyright 2020 Pavlos Petoumenos <pavlos.petoumenos@manchester.ac.uk
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

import re
import os
import sqlite3
import subprocess
from multiprocessing import Pool
from typing import List

import config

CLANG_BINARY = '/usr/bin/clang'
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
        '-ferror-limit=0'
        '-xcl'
    ] + ['-Wno-{}'.format(x) for x in disabled_warnings]

    args += ['-include', SHIMFILE]

    return args

def db_connect(pth):
    conn = sqlite3.connect(pth)
    with conn:
        conn.execute(
            '''CREATE TABLE IF NOT EXISTS ContentFiles (
            id TEXT NOT NULL,
            contents TEXT NOT NULL,
            UNIQUE(id))'''
        )
        conn.execute(
            '''CREATE TABLE IF NOT EXISTS PreprocessedFiles (
            id TEXT NOT NULL,
            status INTEGER NOT NULL,
            contents TEXT NOT NULL,
            UNIQUE(id))'''
        )
        conn.execute(
            '''CREATE TABLE IF NOT EXISTS Kernels (
            id TEXT NOT NULL,
            contents TEXT NOT NULL,
            UNIQUE(id))'''
        )
    return conn

def inline_fs_headers(path: str, stack: List[str]) -> str:
    """
    Recursively inline headers in file.

    Parameters
    ----------
    path : str
        File.
    stack : List[str]
        File stack.

    Returns
    -------
    str
        Inlined file.
    """
    stack.append(path)

    with open(path) as infile:
        src = infile.read()

    outlines = []
    for line in src.split('\n'):
        match = re.match(_INCLUDE_RE, line)
        if match:
            include_name = match.group(1)

            # try and resolve relative paths
            include_name = include_name.replace('../', '')

            include_path = os.path.join(os.path.dirname(path), include_name)

            if os.path.exists(include_path) and include_path not in stack:
                include_src = inline_fs_headers(include_path, stack)
                outlines.append('// [FETCH] include: ' + include_path)
                outlines.append(include_src)
                outlines.append('// [FETCH] eof(' + include_path + ')')
            else:
                if include_path in stack:
                    outlines.append('// [FETCH] ignored recursive include: ' +
                                    include_path)
                else:
                    outlines.append('// [FETCH] 404 not found: ' +
                                    include_path)
        else:
            outlines.append(line)

    return '\n'.join(outlines)


def file_rewrite(kid, src):
    # Clang preprocess
    cmd = [CLANG_BINARY] + clang_cl_args() + ['-E', '-c', '-', '-o', '-']
    try:
        process = subprocess.run(cmd, input=src, stdout=subprocess.PIPE,
                                 stderr=subprocess.PIPE, text=True, check=True)
    except subprocess.CalledProcessError as err:
        return kid, -1, src

    lines = process.stdout.split('\n')

    i = 0
    for i, line in enumerate(lines):
        if line == '# 1 "<stdin>" 2':
            break

    lines = [line.strip() for line in lines[i+1:]]
    lines = [line for line in lines if not line.startswith('#')]
    src = '\n'.join(lines)


    # Clgen rewrite
    cmd = [CLGEN_REWRITER] + [f'extra-arg={x}' for x in clang_cl_args()] + ['--']
    try:
        process = subprocess.run(cmd, input=src, stdout=subprocess.PIPE,
                                 stderr=subprocess.PIPE, text=True, check=True)
    except subprocess.CalledProcessError as err:
        if err.returncode == 204:
            return kid, -2, src

    src = process.stdout

    # Clang format
    style = '{BasedOnStyle: Google, DerivePointerAlignment: False, PointerAlignment: Left}'
    cmd = [CLANG_FORMAT, f'style={style}']
    try:
        process = subprocess.run(cmd, input=src, stdout=subprocess.PIPE,
                                 stderr=subprocess.PIPE, text=True, check=True)
    except subprocess.CalledProcessError as err:
        return kid, -3, src

    if len(process.stderr) > 0:
        return kid, -3, src

    src = process.stdout

    if len(src) == 0:
        return kid, -4, src
    if '{' not in src:
        return kid, -5, src
    if '}' not in src:
        return kid, -5, src
    if src.count('{') != src.count('}'):
        return kid, -5, src

    return kid, 0, src

def split_kernels(src):
    kernels = []
    while len(src) > 0:
        idx = src.find('__kernel')
        if idx == -1:
            break

        src = src[idx:]
        idx = src.find('{') + 1
        depth = 1
        for idx in range(min(len(src), 5000)):
            if src[idx] == '{':
                depth += 1
            elif src[idx] == '}':
                depth -= 1
            if depth == 0:
                kernels.append(src[:idx+1])
                break
        src = src[idx+1:]
    return kernels

def kernel_rewrite(src):
    src = src.replace('\n', ' ')
    src = src.replace('\t', ' ')
    while '  ' in src:
        src = src.replace('  ', ' ')
    return src

def collect_corpus(conn):
    with conn:
        for ext in ['.cl', '.ocl']:
            for pth in config.BMARK_PATH.rglob('*' + ext):
                print(f'Processing file {pth}')
                try:
                    contents = inline_fs_headers(pth, [])
                except IOError:
                    conn.commit()
                    print('Failed reading file')
                    raise Exception
                conn.execute('INSERT OR IGNORE INTO ContentFiles VALUES(?,?)', (pth, contents))

def preprocess_corpus(conn):
    with conn:
        stmt = 'SELECT id FROM ContentFiles'
        kids = set(row[0] for row in conn.execute(stmt))
        stmt = 'SELECT id FROM PreprocessedFiles'
        done = set(row[0] for row in conn.execute(stmt))
        todo = kids - done

        jobs = []
        for kid in todo:
            stmt = 'SELECT contents FROM ContentFiles WHERE id=?'
            src = conn.execute(stmt, (kid,))[0]
            jobs.append((kid, src))

    with conn:
        with Pool(16) as p:
            for kid, status, src in p.imap_unordered(file_rewrite, jobs):
                conn.execute('INSERT INTO PreprocessedFiles VALUES(?,?,?)',
                             (kid, status, src))

def separate_kernels(conn):
    with conn:
        stmt = 'SELECT id, contents FROM PreprocessedFiles WHERE status=0'
        for kid, src in conn.execute(stmt):
            kernels = split_kernels(src)
            for idx, kernel in enumerate(kernels):
                kernel = kernel_rewrite(kernel)
                new_kid = f'{kid}:{idx}'
                conn.execute('INSERT INTO Kernels VALUES(?,?)',
                             (new_kid, kernel))

def generate_corpus():
    conn = db_connect(config.KERNELDB_PATH)
    collect_corpus(conn)
    preprocess_corpus(conn)
    separate_kernels(conn)
    conn.close()
