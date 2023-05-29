# 0 "barthe-secmult.c"
# 0 "<built-in>"
# 0 "<命令行>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<命令行>" 2
# 1 "barthe-secmult.c"
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
# 2 "barthe-secmult.c" 2


typedef unsigned char byte;





const byte d = 3;
# 20 "barthe-secmult.c"
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

void vmult(const byte *a, int ra, const byte *b, int rb, byte *c) {
  for (int i = 0; i <= d; ++i) {
    c[i] = Mult(a[(i + ra) % (d + 1)], b[(i + rb) % (d + 1)]);
  }
}

void vadd(const byte *a, int ra, const byte *b, int rb, byte *c) {
  for (int i = 0; i <= d; ++i) {
    c[i] = a[(i + ra) % (d + 1)] ^ b[(i + rb) % (d + 1)];
  }
}

int ceil_(double x) {
  int y = x;
  if(x == (double)y) {
    return y;
  }
  return y + 1;
}

int mod_(int x, int y) {
  if(x >= 0) {
    return x % y;
  } else {
    return (y + x) % y;
  }
}

void SecMult(const byte *a, const byte *b, byte *c) {
  byte A = XorArray(a), B = XorArray(b);

  const int k = d + 1;
  typedef byte shares[k];

  shares r[k], cc[2 * k], dd[2 * k];
  for (int i = 0; i <= d; ++i) {
    for (int j = 0; j <= d; ++j) {
      r[i][j] = Rand();
    }
  }

  vmult(a, 0, b, 0, cc[1]);
  for (int i = 1; i <= (k - mod_((k - 3), 4))/2; ++i) {
    vmult(a, 0, b, i, cc[2 * i]);
    vmult(a, i, b, 0, cc[2 * i + 1]);
  }

  if (k % 4 == 0) {
    vmult(a, 0, b, k/2, cc[k]);
  } else if (k % 4 == 1) {
    vmult(a, 0, b, k/2, cc[k - 1]);
    vmult(a, k/2, b, 0, cc[k]);
  } else if (k % 4 == 2) {
    vmult(a, 0, b, k/2, cc[k - 2]);
    vmult(a, k/2, b, 0, cc[k - 1]);
    vmult(a, 0, b, k/2 + 1, cc[k]);
  }

  vadd(cc[1], 0, r[1], 0, dd[1]);
  for (int i = 1; i <= (k - mod_((k - 3), 4))/2; ++i) {
    vadd(dd[3 * i - 2], 0, cc[2 * i], 0, dd[3 * i - 1]);
    vadd(dd[3 * i - 1], 0, cc[2 * i + 1], 0, dd[3 * i]);
    vadd(dd[3 * i], 0, r[ceil_((i + 1)/2.)], i % 2, dd[3 * i + 1]);
  }

  if (k % 4 == 3) {
    for(int i = 0; i <= d; ++i) c[i] = dd[3 * (k/2) + 1][i];
  } else if (k % 4 == 0) {
    vadd(dd[3 * ((k - 1)/2) + 1], 0, cc[k], 0, c);
  } else if (k % 4 == 1) {
    vadd(dd[3 * ((k - 2)/2) + 1], 0, cc[k - 1], 0, c);
    vadd(cc[k], 0, c, 0, c);
  } else if (k % 4 == 2) {
    vadd(dd[3 * ((k - 3)/2) + 1], 0, cc[k - 2], 0, c);
    vadd(cc[k - 1], 0, c, 0, c);
    vadd(r[ceil_((k - 1)/4.)], 1, c, 0, c);
    vadd(cc[k], 0, c, 0, c);
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
