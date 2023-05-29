for k in 1 2 3 4 5 6 8 10 12 14 16; do
for ((i=0; i<=5; i=i+1)); do
    ../scripts/preprocess.py \
        -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
        -DINLINE_MODE -DK=$k -DORDER=$i \
        ../examples/seca2b.cpp \
        -n .k$k-d$i.ll -o .k$k-d$i.opt.ll
done
done
