#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/time.h>

int main(int argc, char **argv) {
  char *fname;
  struct timeval t_check, t_use;
  FILE *f;

  printf("uid=%d, euid=%d\n", getuid(), geteuid());

  if(argc != 3) {
    printf("usage: append string filename\n");
    return 0;
  }

  fname = argv[2];

  gettimeofday(&t_check, NULL);

  if(access(fname, R_OK) == 0) {

    gettimeofday(&t_use, NULL);
    f = fopen(fname, "a");
    if(f == NULL) {
      printf("Cannot open file %s\n",fname);
      return 1;
    }
    fprintf(f,"%s\n", argv[1]);

    printf("Time from check to use:  %ld\n", t_use.tv_usec-t_check.tv_usec);
  }
  else {
    printf("Access to file %s was denied\n", fname);
    return 1;
  }
  return 0;
}
