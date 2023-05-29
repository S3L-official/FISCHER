# 0 "cassiers-secmult.c"
# 0 "<built-in>"
# 0 "<命令行>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<命令行>" 2
# 1 "cassiers-secmult.c"
# 1 "include/verify.h" 1




# 1 "include/seahorn.h" 1





extern void __VERIFIER_error (void);
extern void __VERIFIER_assume (int);
# 6 "include/verify.h" 2

extern unsigned char __VERIFIER_nondet_unsigned_char(void);
# 32 "include/verify.h"
static inline unsigned char Rand() {

    return __VERIFIER_nondet_unsigned_char();





}

static inline void SRand() {



}
# 2 "cassiers-secmult.c" 2


typedef unsigned char byte;





const byte d = 2;
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

  (void)((Mult(A, B) == XorArray(c)) || (__VERIFIER_error (), 0));
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
