# 0 "belaid-secmult.c"
# 0 "<built-in>"
# 0 "<命令行>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<命令行>" 2
# 1 "belaid-secmult.c"
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
# 2 "belaid-secmult.c" 2


typedef unsigned char byte;





const byte d = 2;
# 20 "belaid-secmult.c"
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

  byte alpha[d + 1][d + 1], t[d + 1][d + 1], r[d + 1][d + 1], rr[d + 1];

  for (int i = 0; i <= d; ++i) {
    for (int j = 0; j <= d; ++j) {
      alpha[i][j] = Mult(a[i], b[j]);
    }
  }

  for (int i = 0; i <= d; ++i) {
    for (int j = 0; j <= d - i - 1; j += 2) {
      r[i][d - j] = Rand();
    }
  }

  for (int j = d - 1; j >= 1; j -= 2) {
    rr[j] = Rand();
  }

  for (int i = 0; i <= d; ++i) {
    c[i] = alpha[i][i];

    for (int j = d; j >= i + 2; j -= 2) {
      t[i][j] = r[i][j] ^ alpha[i][j] ^ alpha[j][i] ^ rr[j - 1] ^ alpha[i][j - 1] ^ alpha[j - 1][i];
      c[i] ^= t[i][j];
    }

    if (i % 2 != d % 2) {
      t[i][i + 1] = r[i][i + 1] ^ alpha[i][i + 1] ^ alpha[i + 1][i];
      c[i] ^= t[i][i + 1];
      if (i % 2 == 1) {
        c[i] ^= rr[i];
      }
    } else {
      for (int j = i - 1; j >= 0; --j) {
        c[i] ^= r[j][i];
      }
    }
  }

  
# 92 "belaid-secmult.c" 3 4
 ((void) sizeof ((
# 92 "belaid-secmult.c"
 Mult(A, B) == XorArray(c)
# 92 "belaid-secmult.c" 3 4
 ) ? 1 : 0), __extension__ ({ if (
# 92 "belaid-secmult.c"
 Mult(A, B) == XorArray(c)
# 92 "belaid-secmult.c" 3 4
 ) ; else __assert_fail (
# 92 "belaid-secmult.c"
 "Mult(A, B) == XorArray(c)"
# 92 "belaid-secmult.c" 3 4
 , "belaid-secmult.c", 92, __extension__ __PRETTY_FUNCTION__); }))
# 92 "belaid-secmult.c"
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
