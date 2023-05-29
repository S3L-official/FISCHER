#!/usr/bin/env bash

set -x

for sbox in present-sbox aes-sbox; do

for i in 1 2 3 4 5; do
    ../scripts/preprocess.py \
        -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
        -DINLINE_MODE -DORDER=$i \
        ../examples/dom-$sbox.c \
        -n .inline-$i.ll -o .inline-$i.opt.ll
    ../scripts/preprocess.py \
        -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
        -DINLINE_MODE -DORDER=$i \
        ../examples/hpc1-$sbox.c \
        -n .inline-$i.ll -o .inline-$i.opt.ll
    ../scripts/preprocess.py \
        -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
        -DINLINE_MODE -DORDER=$i \
        ../examples/hpc2-$sbox.c \
        -n .inline-$i.ll -o .inline-$i.opt.ll
done

i=2
../scripts/preprocess.py \
    -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
    -DINLINE_MODE -DORDER=$i \
    ../examples/cms-$sbox.c \
    -n .inline-$i.ll -o .inline-$i.opt.ll

done
