# 0 "cassiers-secmult.c"
# 0 "<built-in>"
# 0 "<命令行>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<命令行>" 2
# 1 "cassiers-secmult.c"
# 1 "include/verify.h" 1
# 21 "include/verify.h"
# 1 "/usr/include/assert.h" 1 3 4
# 35 "/usr/include/assert.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 392 "/usr/include/features.h" 3 4
# 1 "/usr/include/features-time64.h" 1 3 4
# 20 "/usr/include/features-time64.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 21 "/usr/include/features-time64.h" 2 3 4
# 1 "/usr/include/bits/timesize.h" 1 3 4
# 19 "/usr/include/bits/timesize.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 20 "/usr/include/bits/timesize.h" 2 3 4
# 22 "/usr/include/features-time64.h" 2 3 4
# 393 "/usr/include/features.h" 2 3 4
# 490 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 559 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 560 "/usr/include/sys/cdefs.h" 2 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 561 "/usr/include/sys/cdefs.h" 2 3 4
# 491 "/usr/include/features.h" 2 3 4
# 514 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4
# 10 "/usr/include/gnu/stubs.h" 3 4
# 1 "/usr/include/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/gnu/stubs.h" 2 3 4
# 515 "/usr/include/features.h" 2 3 4
# 36 "/usr/include/assert.h" 2 3 4
# 64 "/usr/include/assert.h" 3 4




# 67 "/usr/include/assert.h" 3 4
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



# 22 "include/verify.h" 2


# 23 "include/verify.h"
extern unsigned char __VERIFIER_nondet_int(void);
# 32 "include/verify.h"
static inline unsigned char Rand() {



    return __VERIFIER_nondet_int();



}

static inline void SRand() {

    srand(time(0));

}
# 2 "cassiers-secmult.c" 2


typedef unsigned char byte;





const byte d = 0;
# 20 "cassiers-secmult.c"
byte Mult(byte a, byte b) {
    byte p = 0;

    for (int i = 0; i < 8; ++i) {
        if (b & 1u) p ^= a;
        b >>= 1u;

        if (a & 0x80u) a = (a << 1u) ^ 0x1bu;
        else a <<= 1u;
    }

    return p;
}

byte XorArray(const byte x[]) {
    byte r = 0;

    for (byte i = 0; i <= d; ++i) {
        r ^= x[i];
    }

    return r;
}

void RandArray(byte x[]) {
    for (byte i = 0; i <= d; ++i) {
        x[i] = Rand();
    }
}

void SecMult(const byte *a, const byte *b, byte *c) {
  byte A = XorArray(a), B = XorArray(b);

  byte r[d + 1][d + 1], s[d + 1][d + 1], p0[d + 1][d + 1], p1[d + 1][d + 1], z[d + 1][d + 1];

  for (int i = 0; i <= d; ++i) {
    for (int j = i + 1; j <= d; ++j) {
      r[i][j] = Rand();
      r[j][i] = r[i][j];
    }
  }

  for (int i = 0; i <= d; ++i) {
    for (int j = 0; j <= d; ++j) {
      if (j != i) {
        s[i][j] = b[j] ^ r[i][j];
        p0[i][j] = Mult(a[i] ^ 1, r[i][j]);
        p1[i][j] = Mult(a[i], s[i][j]);
        z[i][j] = p0[i][j] ^ p1[i][j];
      }
    }
  }

  for (int i = 0; i <= d; ++i) {
    c[i] = Mult(a[i], b[i]);
    for (int j = 0; j <= d; ++j) {
      if (j != i)
        c[i] ^= z[i][j];
    }
  }

  
# 81 "cassiers-secmult.c" 3 4
 ((void) sizeof ((
# 81 "cassiers-secmult.c"
 Mult(A, B) == XorArray(c)
# 81 "cassiers-secmult.c" 3 4
 ) ? 1 : 0), __extension__ ({ if (
# 81 "cassiers-secmult.c"
 Mult(A, B) == XorArray(c)
# 81 "cassiers-secmult.c" 3 4
 ) ; else __assert_fail (
# 81 "cassiers-secmult.c"
 "Mult(A, B) == XorArray(c)"
# 81 "cassiers-secmult.c" 3 4
 , "cassiers-secmult.c", 81, __extension__ __PRETTY_FUNCTION__); }))
# 81 "cassiers-secmult.c"
                                   ;
}

void VerifySecMult() {
    byte a[d + 1], b[d + 1], c[d + 1];
    RandArray(a);
    RandArray(b);
    SecMult(a, b, c);
}

int main() {
    VerifySecMult();
}
