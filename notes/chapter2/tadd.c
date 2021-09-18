// Secion 2.3
// tadd and tsub
#include <stdio.h>
#include <limits.h> 
#include <math.h>

// return true (1) if result is normal
int tadd(int a, int b){
  /*
  // determine 32bit or 64bit
  if(sizeof(long) == 48){
    printf("machine is 64-bit\n");
  } else if(sizeof(long) == 4){
    printf("machine is 32-bit\n");
  } else {
    printf("abnormal size of long: %d\n", sizeof(long));
  }
  */
 // start comparing 

  if(a == 0 || b == 0){
    return 1;
  }
  if(a < 0){
    if(b > 0){
      return 1;
    }else if(a+b < 0){
      return 1;
    } 
  }else{
    if(b < 0){
      return 1;
    }else if(a+b > 0){
      return 1;
    }
  } 
  return 0;
}

int tadd_ok(int a, int b){
  int over_1 = a>0 && b>0 && a+b<=0;
  int over_2 = a<0 && b<0 && a+b>=0;
  return !over_1 && !over_2;
}

int tsub_ok(int a, int b){
  if(b == INT_MIN){
    if(a>=0)
      return 0;
  } 
  int over_1 = a>0 && b<0 && a-b<=0;
  int over_2 = a<0 && b>0 && b-a<=0;
  return !over_1 && !over_2;
}

int main(){



  printf("%d\n", tsub_ok(0, INT_MIN)); // 0 overflow 
  printf("%d\n", tsub_ok(1, INT_MIN)); // 0 overflow 0
  printf("%d\n\n", tsub_ok(-1, INT_MIN));// 1 normal

  printf("%d\n", tadd_ok(0, INT_MIN)); // 1
  printf("%d\n", tadd_ok(1, INT_MIN)); // 1
  printf("%d\n", tadd_ok(-1, INT_MIN)); // 0
}