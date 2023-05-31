# FISCHER

This is the repository of the paper "Automated Verification of Correctness for Masked Arithmetic Programs". In this paper, we make the following main contributions:

- We propose a term rewriting system for automatically proving the functional
correctness of masked cryptographic programs;
- We implement a tool FISCHER by synergistically integrating the term rewrit-
ing based approach, random testing and SMT solving;
- We conduct extensive experiments, confirming the effectiveness, efficiency,
scalability and applicability of our approach.

## Repo Structure

```
├── baseline          input benchmark code for baseline tools
│   ├── cryptoline    script and code for CryptoLine
│   ├── include       header file for input code of SMACK, SeaHorn and CPAChecker
│   └── smt           generated SMT-LIB benchmark code
├── procedures        script, c code and generated llvm ir for FISCHER
└── verifier          source code of verifier
    ├── include       .hpp header files
    ├── patches       LLVM patch file
    ├── scripts       preprocess script and wrapper programs
    └── src           .cpp source files
```

## Quick Start

Build the verifier:

```
mkdir build && cd build
cmake ../verifier -DCMAKE_BUILD_TYPE=Release
make -j$(nproc)
```

Preprocess C code and run the verifier:

```
./verifier/scripts/preprocess.py test.c
./build/FISCHER test.opt.ll # `-h` for more options
```

