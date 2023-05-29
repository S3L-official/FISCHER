#ifndef VERIFY_H_
#define VERIFY_H_

#if defined(SEAHORN)
#include <seahorn.h>

extern unsigned char __VERIFIER_nondet_unsigned_char(void);

#define assert sassert

#elif defined(SMACK)
#include <smack.h>

#elif defined(CPACHECKER)
#define assert(p) if(!(p)) { ERROR:__VERIFIER_error(); }

extern void __VERIFIER_error() __attribute__ ((__noreturn__));
extern unsigned char __VERIFIER_nondet_unsigned_char(void);

#elif defined(SYMBIOTIC)
#include <assert.h>

extern unsigned char __VERIFIER_nondet_int(void);

#else
#include <stdlib.h>
#include <time.h>
#include <assert.h>

#endif

static inline unsigned char Rand() {
#if defined(SEAHORN) || defined(SMACK) || defined(CPACHECKER)
    return __VERIFIER_nondet_unsigned_char();
#elif defined(SYMBIOTIC)
    return __VERIFIER_nondet_int();
#else
    return rand();
#endif
}

static inline void SRand() {
#if !(defined(SEAHORN) || defined(SMACK) || defined(CPACHECKER))
    srand(time(0));
#endif
}

#endif
