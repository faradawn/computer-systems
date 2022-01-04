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
    long tag;
    long age;
} line;

line** cache;

// read argument
void readArg(int argc, char** argv)
{
  int c;
  while((c = getopt(argc, argv, "hvs:E:b:t:")) != -1){
    switch(c){
        case 'h':
            fprintf(stdout, "Usage: ./csim-ref [-hv] -s <num> -E <num> -b <num> -t <file>\n"
            "Options:\n"
            "  -h         Print this help message.\n"
            "  -v         Optional verbose flag.\n"
            "  -s <num>   Number of set index bits.\n"
            "  -E <num>   Number of lines per set.\n"
            "  -b <num>   Number of block offset bits.\n"
            "  -t <file>  Trace file.\n\n"
            "Examples:\n"
            "  linux>  ./csim-ref -s 4 -E 1 -b 4 -t traces/yi.trace\n"
            "  linux>  ./csim-ref -v -s 8 -E 2 -b 4 -t traces/yi.trace\n");
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

// increase age by one
void inc_age()
{
    int S = 1 << s;
    for(int i = 0; i < S; i++){
        for(int j = 0; j<E; j++){
            if(cache[i][j].v == 1){
                cache[i][j].age ++;
            }
        }
    }
}

// run the cache for one address
void fetchCache(long address, int size)
{
    long max_age = -1;
    int evict = -1;
    long index = (address >> b) & ((1 << s) - 1);
    long tag = address >> (s + b);

    line* set = cache[index];
    
    for(int i = 0; i < E; i++)
    {
        if(set[i].v == 1 && set[i].tag == tag){
            set[i].age = 0;
            if(verbose) printf(" hit");
            num_hit++;
            return;
        }
    }

    if(verbose) printf(" miss");
    for(int j = 0; j < E; j++){
        if(!set[j].v){
            set[j].v = 1;
            set[j].tag = tag;
            set[j].age = 0;
            num_miss++;
            return;
        }
    }


    if(verbose) printf(" eviction");
    for(int k = 0; k < E; k++){
        if(set[k].age > max_age){
            max_age = set[k].age;
            evict = k;
        }
    }
    set[evict].tag = tag;
    set[evict].age = 0;

    num_evict++;
    num_miss++;
}

// simulate to loop through the addresses 
void simulate(int argc, char** argv)
{
    readArg(argc, argv);
    int S = 1 << s;

    cache = (line**)malloc(sizeof(line*) * S);    
    if(cache == NULL){ fprintf(stderr, "error malloc out\n"); exit(1); }

    for(int i = 0; i < S; i++)
    {
        cache[i] = (line*)malloc(sizeof(line) * E);
        if(cache[i] == NULL){ fprintf(stderr, "error calloc in\n"); exit(1); }
        for(int j = 0; j<E; j++){
            cache[i][j].v = 0;
            cache[i][j].tag = -1;
            cache[i][j].age = -1; 
        }
    }

    char buf[1024]; 
    char mode;
    long address;
    int size;

    while(fgets(buf, sizeof(buf), file) != NULL)
    {
        if(buf[0] == ' '){
            sscanf(buf, " %c %lx,%d", &mode, &address, &size);
            if(verbose) { printf("%c %lx,%d", mode, address, size); }
            switch (mode)
            {
                case 'L':
                    fetchCache(address, size);
                    if(verbose) printf("\n");
                    break;
                case 'S':
                    fetchCache(address, size);
                    if(verbose) printf("\n");
                    break;
                case 'M':
                    fetchCache(address, size);
                    fetchCache(address, size);
                    if(verbose) printf("\n");
            }
            inc_age();
        }
    }
}

// free cache
void freeCache()
{
    int S = 1 << s;
    for(int j = 0; j < S; j ++)
        free(cache[j]);
    free(cache);
    fclose(file);
}

int main(int argc, char* argv[])
{   
    simulate(argc, argv);
    printSummary(num_hit, num_miss, num_evict);
    freeCache();
    return 0;
}
