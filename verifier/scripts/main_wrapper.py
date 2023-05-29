#!/usr/bin/env python3

from subprocess import Popen, PIPE, call
from sys import argv, stdin
from shutil import which
from time import perf_counter
from re import compile

args = argv[1:]
if len(args) == 0:
    print('fatal:', 'expected arguments')
    exit()

repeat = 1
if '--repeat' in args:
    pos = args.index('--repeat')
    repeat = int(args[pos + 1])
    args.pop(pos + 1)
    args.pop(pos)

args[0] = which(args[0])
print('running:', *args, f" (with {repeat} repetitions)")

filename = list(filter(lambda s: s.endswith('.ll'), args))
dash = list(filter(lambda s: s == '-', args))

if len(filename) == 0 and len(dash) == 0:
    print('warning:', ' *.ll file or stdin dash not found')
    exit(call(args))

if len(filename) > 0:
    filename = filename[0]
    file = open(filename, 'r')
    code = file.read()
    file.close()
elif len(dash) > 0:
    filename = "stdin"
    code = stdin.read()

fn_start_regex = compile(r'define.*@(.*?)\(.*{')
fn_end_regex = compile(r'}')
fn_dict = dict()

now_pos = 0

while True:
    if fstart := fn_start_regex.search(code, now_pos):
        fn_dict[fstart.group(1)] = [fstart.start()]
    else:
        break
    if fend := fn_end_regex.search(code, now_pos):
        fn_dict[fstart.group(1)].append(fend.start())
        now_pos = fend.end()
    else:
        break

print('functions:', ', '.join(i for i in fn_dict.keys()))

ins_regex = compile(r"\w\[.*\]\[.*\]\s*\[(.*)\]\s*(.*?)\s*(?:#.*)?:.*")

def find_ins(line):
    res = ins_regex.findall(line)
    if len(res) >= 1:
        return res[0]
    
    return None

def ins_line(func, ins):
    pos = code.find(ins, fn_dict[func][0], fn_dict[func][1])
    if pos != -1:
        return code[:pos].count('\n') + 1
    
    return None

counts = []

for i in range(repeat):
    t = perf_counter()

    proc = Popen(args, stdin=PIPE, stderr=PIPE, text=True)

    if len(dash) > 0:
        proc.stdin.write(code)
        proc.stdin.close()

    while line := proc.stderr.readline():
        if ins := find_ins(line):
            if l := ins_line(*ins):
                print(line.rstrip(), f'({filename}:{l})')
                continue
        print(line, end='')

    proc.poll()

    counts.append(perf_counter() - t)

print("average:", sum(counts)/len(counts), "each:", counts)
