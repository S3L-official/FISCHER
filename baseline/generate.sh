CC=gcc
NEG_ASSERT=("" "-DNEG_ASSERT")
NEG_ASSERT_TAG=("" "-neg")

for PROG in "main" "rivain-secmult" "cassiers-secmult" "belaid-secmult" "barthe-secmult" "gross-secmult"; do
    for neg in 0 1; do
        for d in 0 1 2 3; do
            $CC -E ${PROG}.c -o ${PROG}-runtime-$d${NEG_ASSERT_TAG[$neg]}.i -DMASKING_ORDER=$d ${NEG_ASSERT[$neg]} -Iinclude
            for v in SMACK SEAHORN CPACHECKER SYMBIOTIC; do
                $CC -E ${PROG}.c -o ${PROG}-$v-$d${NEG_ASSERT_TAG[$neg]}.i -D$v -DMASKING_ORDER=$d ${NEG_ASSERT[$neg]} -Iinclude
            done
        done
    done
done
