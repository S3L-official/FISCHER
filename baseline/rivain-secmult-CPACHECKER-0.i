# 0 "rivain-secmult.c"
# 0 "<built-in>"
# 0 "<命令行>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<命令行>" 2
# 1 "rivain-secmult.c"
# 1 "include/verify.h" 1
# 17 "include/verify.h"
extern void __VERIFIER_error() __attribute__ ((__noreturn__));
extern unsigned char __VERIFIER_nondet_unsigned_char(void);
# 32 "include/verify.h"
static inline unsigned char Rand() {

    return __VERIFIER_nondet_unsigned_char();





}

static inline void SRand() {



}
# 2 "rivain-secmult.c" 2


typedef unsigned char byte;





const byte d = 0;
# 20 "rivain-secmult.c"
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

    if(!(Mult(A, B) == XorArray(c))) { ERROR:__VERIFIER_error(); };
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
