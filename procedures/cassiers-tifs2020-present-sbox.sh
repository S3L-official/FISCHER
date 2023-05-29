#!/usr/bin/env bash

../scripts/preprocess.py \
    -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
    -DINLINE_MODE \
    ../examples/cassiers-tifs2020-present-sbox.c

for ((i=0; i<=4; i=i+1)); do
    ../scripts/preprocess.py \
        -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
        -DINLINE_MODE -DORDER=$i \
        ../examples/cassiers-tifs2020-present-sbox.c \
        -n .inline-$i.ll -o .inline-$i.opt.ll
done
