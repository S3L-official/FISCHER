#!/usr/bin/env python3

from argparse import ArgumentParser
from os import system
from pathlib import Path
from time import perf_counter

parser = ArgumentParser()

parser.add_argument('filename', type=Path, nargs='+', help='path of *.c file to preprocess')
parser.add_argument('--llvm-dir', '-d', help='directory of LLVM binaries (opt, clang)', default='/usr/bin')
parser.add_argument('--define', '-D', help='definitions for c prerprocessing', action='append')
parser.add_argument('--output-suffix', '-o', help='path for optimized output', default='.opt.ll')
parser.add_argument('--nonopt-output-suffix', '-n', help='path for non-optimized output', default='.ll')
parser.add_argument('--no-unopt-output', '-p', action='store_true', help='do not output the unoptimized version (use pipe)')

arg = parser.parse_args()

if all(f.suffix != '.c' for f in arg.filename):
    print('*.c file is expected')
    exit()

def sh(s: str) -> bool:
    print(f'$ {s}')
    return system(s) == 0

done = 0
total = len(arg.filename)

def preprocess(f: str, dir: str):
    ll_filename = f.with_suffix(arg.nonopt_output_suffix)
    opt_filename = f.with_suffix(arg.output_suffix)

    defs = " ".join(f"-D{d}" for d in arg.define) if arg.define else ""

    t = perf_counter()

    if arg.no_unopt_output:
        if not sh(f'{dir}/clang {defs} -S -emit-llvm -fno-discard-value-names -O0 -g0 -Xclang -disable-O0-optnone {f} -o - | {dir}/opt -mem2reg -licm -simplifycfg -loop-rotate -loop-reduce -loop-unroll -sccp -simplifycfg -dce -loop-unroll -simplifycfg -dce -loop-rotate -loop-reduce -loop-unroll -sccp -simplifycfg -dce -simplifycfg -loop-rotate -loop-reduce -loop-unroll -sccp -simplifycfg -dce -loop-unroll -simplifycfg -dce -unroll-threshold=999999999 -inline - -S -o {opt_filename}'):
            return
    else:
        if not sh(f'{dir}/clang {defs} -S -emit-llvm -fno-discard-value-names -O0 -g0 -Xclang -disable-O0-optnone {f} -o {ll_filename}'):
            return
        if not sh(f'{dir}/opt -mem2reg -licm -loop-rotate -loop-reduce -loop-unroll -sccp -simplifycfg -dce -loop-unroll -simplifycfg -dce -loop-rotate -loop-reduce -loop-unroll -sccp -simplifycfg -dce -unroll-threshold=999999 -inline {ll_filename} -S -o {opt_filename}'):
            return

    print('spent', perf_counter() - t, 's')

    global done
    done += 1

for f in arg.filename:
    print(f'> preprocessing {f} using {arg.llvm_dir} ...')

    preprocess(f, arg.llvm_dir)

print(f'> done ({done}/{total})')
exit(0 if done == total else 1)
