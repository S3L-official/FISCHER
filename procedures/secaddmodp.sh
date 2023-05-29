# for ((k=1; k<=5; k=k+1)); do
# for ((i=0; i<=5; i=i+1)); do
#     ../scripts/preprocess.py \
#         -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
#         -DINLINE_MODE -DORDER=$i \
#         ../examples/secadd-k$k.c \
#         -n .$i.ll -o .$i.opt.ll
# done
# done

for k in 2 3 4 5 6 8 10 12 14 16; do
for ((i=0; i<=5; i=i+1)); do
    ../scripts/preprocess.py \
        -d ../../clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-20.10/bin \
        -DINLINE_MODE -DK=$k -DORDER=$i \
        ../examples/secaddmodp.cpp \
        -n .k$k-d$i.ll -o .k$k-d$i.opt.ll
done
done
