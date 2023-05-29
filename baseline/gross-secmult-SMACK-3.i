# 0 "gross-secmult.c"
# 0 "<built-in>"
# 0 "<命令行>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<命令行>" 2
# 1 "gross-secmult.c"
# 1 "include/verify.h" 1
# 12 "include/verify.h"
# 1 "include/smack.h" 1





# 1 "/usr/lib/gcc/x86_64-pc-linux-gnu/11.2.0/include-fixed/limits.h" 1 3 4
# 34 "/usr/lib/gcc/x86_64-pc-linux-gnu/11.2.0/include-fixed/limits.h" 3 4
# 1 "/usr/lib/gcc/x86_64-pc-linux-gnu/11.2.0/include-fixed/syslimits.h" 1 3 4






# 1 "/usr/lib/gcc/x86_64-pc-linux-gnu/11.2.0/include-fixed/limits.h" 1 3 4
# 203 "/usr/lib/gcc/x86_64-pc-linux-gnu/11.2.0/include-fixed/limits.h" 3 4
# 1 "/usr/include/limits.h" 1 3 4
# 26 "/usr/include/limits.h" 3 4
# 1 "/usr/include/bits/libc-header-start.h" 1 3 4
# 33 "/usr/include/bits/libc-header-start.h" 3 4
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
# 34 "/usr/include/bits/libc-header-start.h" 2 3 4
# 27 "/usr/include/limits.h" 2 3 4
# 195 "/usr/include/limits.h" 3 4
# 1 "/usr/include/bits/posix1_lim.h" 1 3 4
# 27 "/usr/include/bits/posix1_lim.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 28 "/usr/include/bits/posix1_lim.h" 2 3 4
# 161 "/usr/include/bits/posix1_lim.h" 3 4
# 1 "/usr/include/bits/local_lim.h" 1 3 4
# 38 "/usr/include/bits/local_lim.h" 3 4
# 1 "/usr/include/linux/limits.h" 1 3 4
# 39 "/usr/include/bits/local_lim.h" 2 3 4
# 81 "/usr/include/bits/local_lim.h" 3 4
# 1 "/usr/include/bits/pthread_stack_min-dynamic.h" 1 3 4
# 29 "/usr/include/bits/pthread_stack_min-dynamic.h" 3 4
# 1 "/usr/include/bits/pthread_stack_min.h" 1 3 4
# 30 "/usr/include/bits/pthread_stack_min-dynamic.h" 2 3 4
# 82 "/usr/include/bits/local_lim.h" 2 3 4
# 162 "/usr/include/bits/posix1_lim.h" 2 3 4
# 196 "/usr/include/limits.h" 2 3 4



# 1 "/usr/include/bits/posix2_lim.h" 1 3 4
# 200 "/usr/include/limits.h" 2 3 4
# 204 "/usr/lib/gcc/x86_64-pc-linux-gnu/11.2.0/include-fixed/limits.h" 2 3 4
# 8 "/usr/lib/gcc/x86_64-pc-linux-gnu/11.2.0/include-fixed/syslimits.h" 2 3 4
# 35 "/usr/lib/gcc/x86_64-pc-linux-gnu/11.2.0/include-fixed/limits.h" 2 3 4
# 7 "include/smack.h" 2
# 28 "include/smack.h"
void __SMACK_code(const char *fmt, ...);
void __SMACK_mod(const char *fmt, ...);
void __SMACK_decl(const char *fmt, ...);
void __SMACK_top_decl(const char *fmt, ...);

typedef struct smack_value {
  void *dummy;
} * smack_value_t;
smack_value_t __SMACK_value();
smack_value_t __SMACK_values(void *ary, unsigned count);
smack_value_t __SMACK_return_value(void);
# 52 "include/smack.h"
__attribute__((always_inline)) void __SMACK_dummy(int v);

void __VERIFIER_assume(int);

void __VERIFIER_assert(int);

void __VERIFIER_error(void);
# 89 "include/smack.h"
void *__VERIFIER_nondet(void);
char __SMACK_nondet_char(void);
signed char __SMACK_nondet_signed_char(void);
unsigned char __SMACK_nondet_unsigned_char(void);
short __SMACK_nondet_short(void);
short int __SMACK_nondet_short_int(void);
signed short __SMACK_nondet_signed_short(void);
signed short int __SMACK_nondet_signed_short_int(void);
unsigned short __SMACK_nondet_unsigned_short(void);
unsigned short int __SMACK_nondet_unsigned_short_int(void);
int __SMACK_nondet_int(void);
signed int __SMACK_nondet_signed_int(void);
unsigned __SMACK_nondet_unsigned(void);
unsigned int __SMACK_nondet_unsigned_int(void);
long __SMACK_nondet_long(void);
long int __SMACK_nondet_long_int(void);
signed long __SMACK_nondet_signed_long(void);
signed long int __SMACK_nondet_signed_long_int(void);
unsigned long __SMACK_nondet_unsigned_long(void);
unsigned long int __SMACK_nondet_unsigned_long_int(void);
long long __SMACK_nondet_long_long(void);
long long int __SMACK_nondet_long_long_int(void);
signed long long __SMACK_nondet_signed_long_long(void);
signed long long int __SMACK_nondet_signed_long_long_int(void);
unsigned long long __SMACK_nondet_unsigned_long_long(void);
unsigned long long int __SMACK_nondet_unsigned_long_long_int(void);
char __VERIFIER_nondet_char(void);
signed char __VERIFIER_nondet_signed_char(void);
unsigned char __VERIFIER_nondet_unsigned_char(void);
short __VERIFIER_nondet_short(void);
short int __VERIFIER_nondet_short_int(void);
signed short __VERIFIER_nondet_signed_short(void);
signed short int __VERIFIER_nondet_signed_short_int(void);
unsigned short __VERIFIER_nondet_unsigned_short(void);
unsigned short int __VERIFIER_nondet_unsigned_short_int(void);
int __VERIFIER_nondet_int(void);
signed int __VERIFIER_nondet_signed_int(void);
unsigned __VERIFIER_nondet_unsigned(void);
unsigned int __VERIFIER_nondet_unsigned_int(void);
long __VERIFIER_nondet_long(void);
long int __VERIFIER_nondet_long_int(void);
signed long __VERIFIER_nondet_signed_long(void);
signed long int __VERIFIER_nondet_signed_long_int(void);
unsigned long __VERIFIER_nondet_unsigned_long(void);
unsigned long int __VERIFIER_nondet_unsigned_long_int(void);
long long __VERIFIER_nondet_long_long(void);
long long int __VERIFIER_nondet_long_long_int(void);
signed long long __VERIFIER_nondet_signed_long_long(void);
signed long long int __VERIFIER_nondet_signed_long_long_int(void);
unsigned long long __VERIFIER_nondet_unsigned_long_long(void);
unsigned long long int __VERIFIER_nondet_unsigned_long_long_int(void);
float __VERIFIER_nondet_float(void);
double __VERIFIER_nondet_double(void);
long double __VERIFIER_nondet_long_double(void);
# 161 "include/smack.h"
_Bool __VERIFIER_nondet_bool(void);

unsigned char __VERIFIER_nondet_uchar(void);
unsigned short __VERIFIER_nondet_ushort(void);
unsigned __VERIFIER_nondet_uint(void);
unsigned long __VERIFIER_nondet_ulong(void);
void *__VERIFIER_nondet_pointer(void);

void __SMACK_decls(void);


void __VERIFIER_atomic_begin();
void __VERIFIER_atomic_end();
# 13 "include/verify.h" 2
# 32 "include/verify.h"
static inline unsigned char Rand() {

    return __VERIFIER_nondet_unsigned_char();





}

static inline void SRand() {



}
# 2 "gross-secmult.c" 2


typedef unsigned char byte;





const byte d = 3;
# 20 "gross-secmult.c"
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

  shares r[k], a1b, ab1, a2b, ab2;

  for (int i = 0; i <= d; ++i) {
    for (int j = 0; j <= d; ++j) {
        r[i][j] = Rand();
    }
  }

  vmult(a, 0, b, 0, c);

  for (int i = 0; i < d/4; ++i) {
    vmult(a, 0, b, 2 * i + 1, ab1);
    vmult(a, 2 * i + 1, b, 0, a1b);
    vmult(a, 0, b, 2 * i + 2, ab2);
    vmult(a, 2 * i + 2, b, 0, a2b);

    vadd(c, 0, r[i], 0, c);
    vadd(c, 0, ab1, 0, c);
    vadd(c, 0, a1b, 0, c);
    vadd(c, 0, r[i], 1, c);
    vadd(c, 0, ab2, 0, c);
    vadd(c, 0, a2b, 0, c);
  }

  const int l = d/4;

  if (d % 4 == 3) {
    vmult(a, 0, b, 2 * l + 1, ab1);
    vmult(a, 2 * l + 1, b, 0, a1b);
    vmult(a, 0, b, 2 * l + 2, ab2);

    vadd(c, 0, r[l], 0, c);
    vadd(c, 0, ab1, 0, c);
    vadd(c, 0, a1b, 0, c);
    vadd(c, 0, r[l], 1, c);
    vadd(c, 0, ab2, 0, c);
  } else if (d % 4 == 2) {
    if (d == 2) {
      shares z;
      z[0] = r[l][0];
      z[1] = r[l][1];
      z[2] = r[l][0] ^ r[l][1];

      vmult(a, 0, b, 2 * l + 1, ab1);
      vmult(a, 2 * l + 1, b, 0, a1b);

      vadd(c, 0, z, 0, c);
      vadd(c, 0, ab1, 0, c);
      vadd(c, 0, a1b, 0, c);
    } else {
      vmult(a, 0, b, 2 * l + 1, ab1);
      vmult(a, 0, b, 2 * l + 2, ab2);

      vadd(c, 0, r[l], 0, c);
      vadd(c, 0, ab1, 0, c);
      vadd(c, 0, r[l], 2 * l + 2, c);
      vadd(c, 0, ab2, 0, c);
    }
  } else if (d % 4 == 1) {
    shares z;

    for(int i = 0; i <= d; ++i) {
      z[i] = r[l][i % (k/2)];
    }

    vmult(a, 0, b, 2 * l + 1, ab1);

    vadd(c, 0, z, 0, c);
    vadd(c, 0, ab1, 0, c);
  }

  do { if (!(Mult(A, B) == XorArray(c))) __VERIFIER_assert(0); } while (0);
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
