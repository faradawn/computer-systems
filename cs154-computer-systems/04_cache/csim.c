#include "cachelab.h"
#include <stdio.h>
#include <stdlib.h>
#include <getopt.h>
#include <unistd.h>

FILE* file = NULL;
int E;
int b;
int s;
int verbose = 0;
int num_evict = 0;
int num_miss = 0;
int num_hit = 0;

typedef struct {
    short v;
    unsigned long int tag;
    unsigned long int recent;
} line;

line** cache;


void readArg(int argc, char** argv)
{
  int c;
  while((c = getopt(argc, argv, "hvs:E:b:t:")) != -1){
    switch(c){
        case 'h':
            fprintf(stdout, "\nUsage: %s [-hv] -s <s> -E <E> -b <b> -t <tracefile>\n\n", argv[0]);
            exit(1);
        case 'v':
            verbose = 1;
            break;
        case 's':
            s = atoi(optarg);
            break;
        case 'E':
            E = atoi(optarg);
            break;
        case 'b':
            b = atoi(optarg);
            break;
        case 't':
            file = fopen(optarg, "r");
            if(file == NULL) { perror("error opening file"); exit(1); }
            break;
        default:
            fprintf(stdout, "\nCheck usage: %s [-hv] -s <s> -E <E> -b <b> -t <tracefile>\n\n", argv[0]);
            exit(1);
     }
  }
}

void fetchCache(char mode, long unsigned int address, int size)
{
    int evict = 0;
    int available = -1;
    int index = (address >> b) & ((1 << s) - 1);
    int tag = address >> (s + b);

    line* set = cache[index];
    if(verbose) printf("%c %lx,%d", mode, address, size);

    start:
    for(int i = 0; i < E; i++)
    {
        if(set[i].v){
            if(set[i].tag == tag){
                num_hit ++;
                set[i].recent = 0;
                if(verbose) printf(" hit\n");
                return;
            } else {
                set[i].recent ++;
            }
            if(set[i].recent > set[evict].recent) evict = i;
        } else {
            available = i;
        }
        
        if(available > -1){
            set[available].v = 1;
            set[available].tag = tag;
            set[available].recent = 0;
            num_miss ++;
            if(verbose) printf(" miss");
        } else {
            set[evict].tag = tag;
            set[evict].recent = 0;
            if(verbose) printf(" miss eviction");
            num_evict ++;
            num_miss ++;
        }
        if(mode == 'M'){ mode = 'Z'; goto start; }
        if(verbose) printf("\n");
    }
}

int main(int argc, char* argv[])
{   
    readArg(argc, argv);

    int S = 1 << s;

    cache = (line**)malloc(sizeof(line*) * S);    
    if(cache == NULL){ fprintf(stderr, "error malloc out\n"); exit(1); }

    for(int i = 0; i < S; i++)
    {
        cache[i] = (line*)malloc(sizeof(line) * E);
        if(cache[i] == NULL){ fprintf(stderr, "error calloc in\n"); exit(1); }
    }

    char buf[1024]; // 13 enough?
    char mode;
    long unsigned int address;
    int size;

    while(fgets(buf, sizeof(buf), file) != NULL)
    {
        if(buf[0] == ' '){
            sscanf(buf, " %c %lx,%d", &mode, &address, &size);
            fetchCache(mode, address, size);
        }
    }
    printSummary(num_hit, num_miss, num_evict);

    for(int j = 0; j < S; j ++)
        free(cache[j]);
    free(cache);
    fclose(file);

    return 0;
}
