#include <stdio.h>

int bitXor(int x, int y) { // DONE
  // a or b = ~(~a & ~b); a = ~x & y; b = ~y & x
  return (~(x&y)) & (~( (x)&(~y) ));
}

int tmin(void) { // DONE
  // [10...0] 31 zeros ™
  return 1 << 31;
}

int isTmax(int x) { // REVIEW
  // INTMAX + 1 等于自己，排除INTMIN
  // 需要研究
  int a = !((x+1) ^ ~x), b = !!(x+1);
  return a & b;
}

int allOddBits(int x) { // DONE
  // 最后一步，结果10 negate后是0？
  int a = (x & (x >> 16));
  int b = (a & (a >> 8));
  return !((b & 0xAA) ^ 0xAA);
}

int negate(int x){ // DONE
  return ~x + 1;
}

int isAsciiDigit(int x){
  int a = x + ~0x30;
  int zeroToSeven = !(a >> 3);
  return zeroToSeven | !(a^0x38) | !(a^0x39);
}
int main(){
  printf("%d", 7+0b0001);
  // printf("%d", isAsciiDigit(0x31));
}