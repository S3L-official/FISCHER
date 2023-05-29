#!/usr/bin/env bash

../scripts/preprocess.py \
    -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
    -DINLINE_MODE \
    ../examples/cassiers-tifs2020.c

for i in 0 1 2 3 4 5 10 15 20 40 60 80 100 150 200; do
    ../scripts/preprocess.py \
        -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
        -DINLINE_MODE -DORDER=$i \
        ../examples/cassiers-tifs2020.c \
        -n .inline-$i.ll -o .inline-$i.opt.ll
done
