#!/usr/bin/env bash

../scripts/preprocess.py \
    -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
    -DINLINE_MODE \
    ../examples/rivain-ches2010.c

for mode in inline noinline sigma; do
    if [ $mode == inline ]; then
        INLINEDEF=-DINLINE_MODE
    elif [ $mode == sigma ]; then
        INLINEDEF=-DSIGMA_MODE
    else
        INLINEDEF=
    fi
    
    for ((i=0; i<=4; i=i+1)); do
        ../scripts/preprocess.py \
            -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
            $INLINEDEF -DORDER=$i \
            ../examples/rivain-ches2010.c \
            -n .$mode-$i.ll -o .$mode-$i.opt.ll
    done
done
