#!/bin/sh
clang -c -x cl -emit-llvm -S -cl-std=CL2.0 -Xclang -finclude-default-header -I. -DCLASS=4 btC.cl -o btC.ll
