#!/usr/bin/env bash

../scripts/preprocess.py \
    -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
    -DINLINE_MODE \
    ../examples/rivain-ches2010-present-sbox-inline.c

for ((i=0; i<=4; i=i+1)); do
    ../scripts/preprocess.py \
        -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
        -DINLINE_MODE -DORDER=$i \
        ../examples/rivain-ches2010-present-sbox-inline.c \
        -n .inline-$i.ll -o .inline-$i.opt.ll
done
