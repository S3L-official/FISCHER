#!/usr/bin/env bash

ALGOS=(rivain-ches2010-mult belaid-eurocrypto2016 barthe-eurocrypto2017 gross-ches2017 cassiers-tifs2020)
TACTICS=("(check-sat)" "(check-sat-using (then simplify smt))" "(check-sat-using (then bit-blast smt))")
TNAME=("" ".simp" ".bb")

for algo in ${ALGOS[@]}; do
    for i in 0 1 2 3 4; do
        for t in 0 1 2; do
            ../scripts/main_wrapper.py ../build/MaskScrape -f sec_mult \
                ../examples/$algo.inline-$i.opt.ll -dump-smt ../examples/smt/$algo.$i${TNAME[$t]}.smt2
            sed -i "s/${TACTICS[0]}/${TACTICS[$t]}/g" ../examples/smt/$algo.$i${TNAME[$t]}.smt2
            ../scripts/main_wrapper.py ../build/MaskScrape -f sec_mult \
                ../examples/$algo.inline-$i.opt.ll -dump-smt ../examples/smt/$algo.ss.$i${TNAME[$t]}.smt2 -smt-substitute-symbol
            sed -i "s/${TACTICS[0]}/${TACTICS[$t]}/g" ../examples/smt/$algo.ss.$i${TNAME[$t]}.smt2
        done
    done
done
