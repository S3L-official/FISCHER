#include <stdbool.h>

typedef unsigned char byte;

byte mult(byte x, byte y);
byte rand();

void assume(bool);
void assert(bool);

#ifndef ORDER
#define ORDER 2
#endif
const int d = ORDER;

#define ALWAYS_INLINE __attribute__((always_inline))

#define AFFINE __attribute__((annotate("affine")))
#define MASK_VERIFY __attribute__((annotate("verify")))

#ifdef INLINE_MODE
#define INLINE ALWAYS_INLINE MASK_VERIFY
#else
#define INLINE MASK_VERIFY
#endif

#ifdef SIGMA_MODE
#define SIGMA_PRIME
#else
#define SIGMA_PRIME ALWAYS_INLINE
#endif

SIGMA_PRIME void transform(const byte from[], byte to[], byte f(byte)) {
  for (int i = 0; i <= d; ++i) {
    to[i] = f(from[i]);
  }
}

SIGMA_PRIME byte sigma(const byte a[], byte f(byte)) {
  byte result = 0;

  for (int i = 0; i <= d; ++i) {
    result ^= f(a[i]);
  }

  return result;
}

ALWAYS_INLINE byte id(byte x) { return x; }

ALWAYS_INLINE byte xors(const byte *a) { return sigma(a, id); }
