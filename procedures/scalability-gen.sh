#!/usr/bin/env bash

set -x

# for prog in rivain-ches2010-mult belaid-eurocrypto2016 barthe-eurocrypto2017 gross-ches2017 cassiers-tifs2020; do
#     for i in 0 1 2 3 4 5 10 15 20 40 60 80 100 150 200; do
#         timeout -v 20m ../scripts/preprocess.py \
#             -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
#             -DINLINE_MODE -DORDER=$i \
#             ../examples/$prog.c \
#             -n .inline-$i.ll -o .inline-$i.opt.ll -p
#     done
# done

# for prog in belaid-eurocrypto2016 barthe-eurocrypto2017 gross-ches2017; do
#     for i in 250; do
#         timeout -v 20m ../scripts/preprocess.py \
#             -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
#             -DINLINE_MODE -DORDER=$i \
#             ../examples/$prog.c \
#             -n .inline-$i.ll -o .inline-$i.opt.ll -p
#     done
# done

# for prog in barthe-eurocrypto2017 gross-ches2017; do
#     for i in 300; do
#         timeout -v 20m ../scripts/preprocess.py \
#             -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
#             -DINLINE_MODE -DORDER=$i \
#             ../examples/$prog.c \
#             -n .inline-$i.ll -o .inline-$i.opt.ll -p
#     done
# done

# for prog in rivain-ches2010-present-sbox belaid-eurocrypto2016-present-sbox gross-ches2017-present-sbox cassiers-tifs2020-present-sbox; do
#     for i in 0 1 2 3 4 5 10 15 20 40 60 80 100 150 200; do
#         timeout -v 20m ../scripts/preprocess.py \
#             -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
#             -DINLINE_MODE -DORDER=$i \
#             ../examples/$prog.c \
#             -n .inline-$i.ll -o .inline-$i.opt.ll -p
#     done
# done

# for prog in belaid-eurocrypto2016-present-sbox gross-ches2017-present-sbox cassiers-tifs2020-present-sbox; do
#     for i in 0 1 2 3 4 5 10 15 20 40 60 80 100 150 200; do
#         timeout -v 20m ../scripts/preprocess.py \
#             -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
#             -DINLINE_MODE -DORDER=$i \
#             ../examples/$prog.c \
#             -n .inline-$i.ll -o .inline-$i.opt.ll -p
#     done
# done

# for prog in belaid-eurocrypto2016-present-sbox gross-ches2017-present-sbox; do
#     for i in 250 300; do
#         timeout -v 20m ../scripts/preprocess.py \
#             -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
#             -DINLINE_MODE -DORDER=$i \
#             ../examples/$prog.c \
#             -n .inline-$i.ll -o .inline-$i.opt.ll -p
#     done
# done

# for prog in belaid-eurocrypto2016-present-sbox; do
#     for i in 1 2 3 4 5 10 15 20 40 60 80 100 150 200 250 300; do
#         timeout -v 20m ../scripts/preprocess.py \
#             -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
#             -DINLINE_MODE -DORDER=$i \
#             ../examples/$prog.c \
#             -n .inline-$i.ll -o .inline-$i.opt.ll -p
#     done
# done

# for prog in belaid-eurocrypto2016-aes-sbox; do
#     for i in 1 2 3 4 5 10 15 20 40 60 80 100 150; do
#         timeout -v 20m ../scripts/preprocess.py \
#             -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
#             -DINLINE_MODE -DORDER=$i \
#             ../examples/$prog.c \
#             -n .inline-$i.ll -o .inline-$i.opt.ll -p
#     done
# done

# for prog in rivain-ches2010-sec-exp-affine belaid-eurocrypto2016-aes-sbox gross-ches2017-aes-sbox cassiers-tifs2020-sbox; do
#     for i in 0 1 2 3 4 5 10 15 20 40; do
#         timeout -v 20m ../scripts/preprocess.py \
#             -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
#             -DINLINE_MODE -DORDER=$i \
#             ../examples/$prog.c \
#             -n .inline-$i.ll -o .inline-$i.opt.ll -p
#     done
# done

# for prog in rivain-ches2010-sec-exp-affine belaid-eurocrypto2016-aes-sbox gross-ches2017-aes-sbox cassiers-tifs2020-sbox; do
#     for i in 60 80 100; do
#         timeout -v 20m ../scripts/preprocess.py \
#             -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
#             -DINLINE_MODE -DORDER=$i \
#             ../examples/$prog.c \
#             -n .inline-$i.ll -o .inline-$i.opt.ll -p
#     done
# done

# ------------------------------------------ new --------------------------------------

# for prog in rivain-ches2010-mult belaid-eurocrypto2016 barthe-eurocrypto2017 gross-ches2017 cassiers-tifs2020; do
#     for i in 5 10 20 50 100 200 500 1000; do
#         timeout -v 20m ../scripts/preprocess.py \
#             -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
#             -DINLINE_MODE -DORDER=$i \
#             ../examples/$prog.c \
#             -n .inline-$i.ll -o .inline-$i.opt.ll -p
#     done
# done

# for prog in rivain-ches2010-present-sbox belaid-eurocrypto2016-present-sbox gross-ches2017-present-sbox cassiers-tifs2020-present-sbox; do
#     for i in 5 10 20 50 100 200 500 1000; do
#         timeout -v 20m ../scripts/preprocess.py \
#             -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
#             -DINLINE_MODE -DORDER=$i \
#             ../examples/$prog.c \
#             -n .inline-$i.ll -o .inline-$i.opt.ll -p
#     done
# done

# for prog in rivain-ches2010-sec-exp-affine belaid-eurocrypto2016-aes-sbox gross-ches2017-aes-sbox cassiers-tifs2020-sbox; do
#     for i in 5 10 20 50 100 200 500 1000; do
#         timeout -v 20m ../scripts/preprocess.py \
#             -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
#             -DINLINE_MODE -DORDER=$i \
#             ../examples/$prog.c \
#             -n .inline-$i.ll -o .inline-$i.opt.ll -p
#     done
# done

# for prog in belaid-eurocrypto2016; do
#     for i in 10 20 50 100 200 500 1000; do
#         timeout -v 20m ../scripts/preprocess.py \
#             -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
#             -DINLINE_MODE -DORDER=$i \
#             ../examples/$prog.c \
#             -n .inline-$i.ll -o .inline-$i.opt.ll -p
#     done
# done

# for prog in gross-ches2017-present-sbox; do
#     for i in 200 500; do
#         timeout -v 20m ../scripts/preprocess.py \
#             -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
#             -DINLINE_MODE -DORDER=$i \
#             ../examples/$prog.c \
#             -n .inline-$i.ll -o .inline-$i.opt.ll -p
#     done
# done

# for prog in rivain-ches2010-present-sbox belaid-eurocrypto2016-present-sbox gross-ches2017-present-sbox cassiers-tifs2020-present-sbox; do
#     for i in 1 2 5 10 20 50 100; do
#         timeout -v 20m ../scripts/preprocess.py \
#             -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
#             -DINLINE_MODE -DORDER=$i \
#             ../examples/$prog.c \
#             -n .inline-$i.ll -o .inline-$i.opt.ll -p
#         cat ../examples/$prog.inline-$i.opt.ll | grep for.body
#     done
# done

# for prog in rivain-ches2010-sec-exp-affine belaid-eurocrypto2016-aes-sbox gross-ches2017-aes-sbox cassiers-tifs2020-sbox; do
#     for i in 1 2 5; do
#         timeout -v 20m ../scripts/preprocess.py \
#             -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
#             -DINLINE_MODE -DORDER=$i \
#             ../examples/$prog.c \
#             -n .inline-$i.ll -o .inline-$i.opt.ll -p
#         cat ../examples/$prog.inline-$i.opt.ll | grep for.body
#     done
# done

# for prog in rivain-ches2010-present-sbox belaid-eurocrypto2016-present-sbox barthe-eurocrypto2017-present-sbox gross-ches2017-present-sbox cassiers-tifs2020-present-sbox; do
#     for i in 30; do
#         timeout -v 20m ../scripts/preprocess.py \
#             -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
#             -DINLINE_MODE -DORDER=$i \
#             ../examples/$prog.c \
#             -n .inline-$i.ll -o .inline-$i.opt.ll -p
#         cat ../examples/$prog.inline-$i.opt.ll | grep for.body
#     done
# done

# for prog in rivain-ches2010-sec-exp-affine belaid-eurocrypto2016-aes-sbox barthe-eurocrypto2017-aes-sbox gross-ches2017-aes-sbox cassiers-tifs2020-sbox; do
#     for i in 8; do
#         timeout -v 20m ../scripts/preprocess.py \
#             -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
#             -DINLINE_MODE -DORDER=$i \
#             ../examples/$prog.c \
#             -n .inline-$i.ll -o .inline-$i.opt.ll -p
#         cat ../examples/$prog.inline-$i.opt.ll | grep for.body
#     done
# done

# for prog in barthe-eurocrypto2017-present-sbox cassiers-tifs2020-present-sbox; do
#     for i in 40; do
#         timeout -v 20m ../scripts/preprocess.py \
#             -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
#             -DINLINE_MODE -DORDER=$i \
#             ../examples/$prog.c \
#             -n .inline-$i.ll -o .inline-$i.opt.ll -p
#         cat ../examples/$prog.inline-$i.opt.ll | grep for.body
#     done
# done

for prog in rivain-ches2010-sec-exp-affine belaid-eurocrypto2016-aes-sbox barthe-eurocrypto2017-aes-sbox gross-ches2017-aes-sbox cassiers-tifs2020-sbox; do
    for i in 4; do
        timeout -v 20m ../scripts/preprocess.py \
            -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
            -DINLINE_MODE -DORDER=$i \
            ../examples/$prog.c \
            -n .inline-$i.ll -o .inline-$i.opt.ll -p
        cat ../examples/$prog.inline-$i.opt.ll | grep for.body
    done
done
