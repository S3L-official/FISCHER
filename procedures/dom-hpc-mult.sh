#!/usr/bin/env bash

for i in 0 1 2 3 4; do
    ../scripts/preprocess.py \
        -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
        -DINLINE_MODE -DORDER=$i \
        ../examples/dom-mult.c \
        -n .inline-$i.ll -o .inline-$i.opt.ll
    ../scripts/preprocess.py \
        -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
        -DINLINE_MODE -DORDER=$i \
        ../examples/hpc1-mult.c \
        -n .inline-$i.ll -o .inline-$i.opt.ll
    ../scripts/preprocess.py \
        -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
        -DINLINE_MODE -DORDER=$i \
        ../examples/hpc2-mult.c \
        -n .inline-$i.ll -o .inline-$i.opt.ll
done

i=2
../scripts/preprocess.py \
    -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
    -DINLINE_MODE -DORDER=$i \
    ../examples/cms-mult.c \
    -n .inline-$i.ll -o .inline-$i.opt.ll
