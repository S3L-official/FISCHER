#!/usr/bin/env python3

from sys import argv
from re import compile

filename = argv[1]

file = open(filename)
content = file.readlines()
file.close()

fn_start_regex = compile(r'define.*@(.*?)\(.*{.*\n')
fn_end_regex = compile(r'}\n')
fn_dict = dict()

lineno = 1
curr_func = ''
for line in content:
    if fstart := fn_start_regex.match(line):
        curr_func = fstart.group(1)
        fn_dict[curr_func] = [lineno]
    if fn_end_regex.match(line):
        fn_dict[curr_func].append(lineno)
    lineno += 1

for k, v in fn_dict.items():
    fn_dict[k] = v[1] - v[0]

print(fn_dict)
