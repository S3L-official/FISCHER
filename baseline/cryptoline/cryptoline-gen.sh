#!/usr/bin/env bash

LLVM2CRYPTOLINE=/llvm2cryptoline/build/translate

for name in rivain_sec_mult barthe_sec_mult belaid_sec_mult cassiers_sec_mult gross_sec_mult; do
    for i in 0 1 2 3 4; do
        $LLVM2CRYPTOLINE cryptoline.inline-$i.opt.ll $name
        cat cryptoline.inline-$i.opt_$name.cl | sed "s/(\* Outputs \*)/assert true \&\& AB_0=C_0;/g" > cryptoline.inline-$i.opt_$name.smt.cl
        cat cryptoline.inline-$i.opt_$name.cl | sed "s/(\* Outputs \*)/assert AB_0=C_0 \&\& true;/g" > cryptoline.inline-$i.opt_$name.cas.cl
    done
done
