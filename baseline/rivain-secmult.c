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

// Algorithm 1 SecMult - dth-order secure multiplication over F_{2^n}
// ref to Rivain M, Prouff E. Provably secure higher-order masking of AES
void SecMult(const byte a[], const byte b[], byte c[]) {
    __attribute__((unused)) byte A = XorArray(a), B = XorArray(b);

    byte r[d + 1][d + 1];

    for (byte i = 0; i <= d; ++i) {
        for (byte j = i + 1; j <= d; ++j) {
            r[i][j] = Rand();
            r[j][i] = r[i][j] ^ Mult(a[i], b[j]) ^ Mult(a[j], b[i]);
        }
    }

    for (byte i = 0; i <= d; ++i) {
        c[i] = Mult(a[i], b[i]);
        for (byte j = 0; j <= d; ++j) {
            if (j != i) c[i] ^= r[i][j];
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
