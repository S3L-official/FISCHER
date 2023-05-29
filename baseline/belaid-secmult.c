#include "include/verify.h"

// assume that bit of `unsigned char` is 8
typedef unsigned char byte;

// constant for order of SCA security
#ifndef  MASKING_ORDER
#define MASKING_ORDER 2
#endif
const byte d = MASKING_ORDER;

#ifdef NEG_ASSERT
#define XASSERT(p) assert(!(p))
#else
#define XASSERT(p) assert(p)
#endif

// multiplication in GF(2^8)
// ref to https://en.wikipedia.org/wiki/Finite_field_arithmetic#Rijndael.27s_.28AES.29_finite_field
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

  XASSERT(Mult(A, B) == XorArray(c));
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
