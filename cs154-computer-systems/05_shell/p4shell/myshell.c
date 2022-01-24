#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <ctype.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <ctype.h>

#define MAX_LINE_SIZE 514
#define SINGLE_ARG_SIZE 256
#define MAX_PATH_SIZE 1024
#define MAX_ARGS 32
#define MAX_COMMANDS 64 

typedef struct{
    int argc;
    char* argv[MAX_ARGS]; 
} cmd;

int cmdListLen=0;
int notFormattedFlag=0;
char error_message[30] = "An error has occurred\n";

int isWhiteLine(char* s){
    while (*s != '\0') {
        if (!isspace((unsigned char)*s)){
            return 0;
        }
        s++;
    }
    return 1;
}

char* mySearch(char* s, char c, int* count){
    char* res=NULL;
    int cnt=0;
    do{
      if(*s==c){
        if(!res){
          res=s;
        }
        cnt++;
      }
    }while(*s++);
    *count=cnt;
    return res;
}

int formatStr(char* rawInput, char** newStr){
    int count;
    char *c = rawInput;
    mySearch(rawInput, '>', &count);
    if(count==0){
        *newStr = rawInput;
        return -1;
    }else{
        char* res = (char*)malloc(strlen(rawInput)+2*count+1);
        int k=0;
        do{
            if(*c=='>'){
            res[k++] = ' ';
            res[k++] = *c;
            if(*(c+1)=='+'){
                res[k++] = *(c+1);
                c++;
            } 
            res[k++] = ' ';
            }else{
            res[k++] = *c;
            }
        }while(*++c);
        
        res[k]='\0';
        *newStr=res;

    }
    return 0;
}

void myPrint(char *msg){
    write(STDOUT_FILENO, msg, strlen(msg));
}

void printArgv(char **argv, int argc){
    printf(">> %d: ", argc);
    fflush(stdout);
    for(int i=0; i<argc; i++){
        myPrint("[");
        myPrint(argv[i]);
        myPrint("] ");
    }
    myPrint("\n");
}

void printCmdList(cmd cmdList[MAX_COMMANDS]){
    printf("list len %d\n", cmdListLen);
    fflush(stdout);
    for(int i=0; i<cmdListLen; i++){
        printArgv(cmdList[i].argv, cmdList[i].argc);
    }
}

void freeCmdList(cmd cmdList[MAX_COMMANDS]){
    for(int i=0; i<cmdListLen; i++){
        for(int j=0; j<cmdList[i].argc; j++){
            free(cmdList[i].argv[j]);
        }
    }
}

void freeArgv(char** argv, int argc){
  for(int i=0; i<argc; i++){
    free(argv[i]);
  }
}

void firstParse(char *rawInput, cmd cmdList[MAX_COMMANDS]){

    int i=0, j=0;
    char* saveptr, *saveptrIn, *temp;
    char* token = strtok_r(rawInput, ";\n", &saveptr);
    char* tokenIn = strtok_r(token, " \t", &saveptrIn);

    while(tokenIn!=NULL){
        temp = (char*)malloc(strlen(tokenIn)+1); // add malloc check
        strcpy(temp, tokenIn);
        cmdList[0].argv[j++] = temp;
        tokenIn = strtok_r(NULL, " \t", &saveptrIn);
    }

    cmdList[0].argc = j;
    if(j>0){ i++; j=0; }

    while((token=strtok_r(NULL, ";\n", &saveptr)) != NULL){

        tokenIn = strtok_r(token, " \t", &saveptrIn);
        while(tokenIn != NULL){
            temp = (char*)malloc(strlen(tokenIn)+1); // add malloc check
            strcpy(temp, tokenIn);
            cmdList[i].argv[j++] = temp;
            tokenIn = strtok_r(NULL, " \t", &saveptrIn);
        }

        cmdList[i].argc = j;
        if(j>0){ i++; j=0; }
    }

    cmdListLen = i;
}

int advanceRedirect(cmd cmdUnit, int k){
    if(cmdUnit.argc-1==k){
        myPrint(error_message);
        return 0;
    }

    char* filename=cmdUnit.argv[k+1];
    pid_t pid1;
    char* argvNew[k+1];
    argvNew[k]=NULL;
    for(int i=0; i<k; i++){
        argvNew[i]=strdup(cmdUnit.argv[i]);
    }
    char tempName[strlen(filename)+5];
    strcpy(tempName, filename);
    strcat(tempName, "_tmp");
    int fd1;
    
    if((fd1=open(tempName, O_WRONLY|O_CREAT, 0666))<0){
        myPrint(error_message);
        return 0;
    }

    if((pid1=fork())==0){
        dup2(fd1, STDOUT_FILENO);
        close(fd1);
        execvp(argvNew[0], argvNew);
    }else{
        while(waitpid(pid1, NULL, 0)!=pid1){;}
        int fd;
        if((fd=open(filename, O_RDONLY))<0){
            goto rename;
        }else{
            long filesize = 0;
            filesize = lseek(fd, 0L, SEEK_END);
            lseek(fd, 0L, SEEK_SET);

            char* buf = malloc(filesize+1);

            long size = read(fd, buf, filesize); // size should equal filesize
            if(size != filesize){
                puts("didn't completely read old file\n");
                exit(1);
            }
            buf[size]='\0';

            // start write 
            int fd_temp = open(tempName, O_WRONLY|O_APPEND);
            int byteWritten = write(fd_temp, buf, size);
            if(size != byteWritten){
                puts("didn't completely write to temp file\n");
                exit(1);
            }
            
            close(fd_temp);
            close(fd);
            free(buf);

            rename:
            if(rename(tempName, filename)<0){
               perror("rename fail");
            }
        }
    }
    return 0;
}

int execRedirect(cmd cmdUnit){
    if(cmdUnit.argc < 3){ 
        return -1; // need continue execute
    }

    int k = -1;
    int j = -1;
    for(int i=0; i<cmdUnit.argc; i++){
        if(strcmp(cmdUnit.argv[i], ">")==0){
            if(k!=-1){
                myPrint(error_message); // more than one ">" ">"
                return 0; 
            }
            k=i;
        }else if(strcmp(cmdUnit.argv[i], ">+")==0){
            if(j!=-1){
                myPrint(error_message);
                return 0;
            }
            j=i;
        }
    }

    if(k==-1&&j==-1){
        return -1; // need continue execution
    }else if(k==0||j==0){
        myPrint(error_message); // wrong format ">" "ls" "something"
        return 0;
    }else if(k>0&&j>0){
        myPrint(error_message);
        return 0;
    }


    if(k==cmdUnit.argc-1 || j==cmdUnit.argc-1){
        myPrint(error_message);
        return 0;
    }

    if(k==-1 && j>0){
        advanceRedirect(cmdUnit, j); 

    }else if(k>0 && j==-1){ // normal redirect
        pid_t pid;
        int out_fd;
        char* argvNew[k+1];
        argvNew[k]=NULL;

        for(int i=0; i<k; i++){
            argvNew[i]=strdup(cmdUnit.argv[i]);
        }

        if((out_fd=open(cmdUnit.argv[k+1], 
            O_WRONLY | O_CREAT | O_EXCL, 
            S_IRWXU | S_IRWXG | S_IRWXO)) == -1){
            myPrint(error_message); // file exits
            return 0;
        }

        if((pid=fork()) == 0){
            
            if(dup2(out_fd, STDOUT_FILENO) == -1){
                myPrint(error_message);
            }
            close(out_fd);

            if(execvp(argvNew[0], argvNew)<0){
                myPrint(error_message);
                exit(1);
            }

        }else{
            while(waitpid(pid, NULL, 0)!=pid){;}
        }
        freeArgv(argvNew, k+1);
        return 0;

    }

    return 0;
}

int execBuiltIn(cmd cmdUnit){
    char** argv = cmdUnit.argv;
    int argc = cmdUnit.argc;
    char *firstArg = argv[0];
    
    
    if(strcmp(firstArg, "pwd")==0){
        if(argc>1){
            myPrint(error_message);
            return 0;
        }

        char buf[MAX_PATH_SIZE];
        if(getcwd(buf, MAX_PATH_SIZE)==NULL){
            myPrint(error_message);
        }else{
            myPrint(buf);
            myPrint("\n");
        }
        return 0;

    }else if(strcmp(firstArg,"cd")==0){
        if(argc==1){
            if(chdir(getenv("HOME"))<0){
                myPrint(error_message);
                // exit(1);
            }
        }else if(argc==2){
            if(chdir(argv[1])<0){
                myPrint(error_message);
                // exit(1);
            }
        }else{ 
            myPrint(error_message);
        }
        return 0;

    }else if(strcmp(firstArg, "exit")==0){
        if(argc>1){
            myPrint(error_message);
            return 0;
        }else{
            exit(0);
        }
    }

    return -1;
}

int execOther(cmd cmdUnit){
    //     return 0;
    // }

    char* argvNew[cmdUnit.argc+1];
    argvNew[cmdUnit.argc]=NULL;

    for(int i=0; i<cmdUnit.argc; i++){
        argvNew[i]=strdup(cmdUnit.argv[i]);
    }

    pid_t pid;
    if((pid=fork())==0){
        if(execvp(argvNew[0], argvNew) == -1){
            myPrint(error_message);
            exit(1);
        }
    }else{
        while(waitpid(pid, NULL, 0) != pid){ }
    }

    freeArgv(argvNew, cmdUnit.argc+1);
    
    return 0;
}

void myExec(char *rawInput){
    cmd cmdList[MAX_COMMANDS];
    char* formattedInput; // added space " > "

    notFormattedFlag = formatStr(rawInput, &formattedInput); // multiple ">" ">"

    firstParse(formattedInput, cmdList);

    for(int i=0; i<cmdListLen; i++){
        if(execBuiltIn(cmdList[i]) == -1){ // first try buildin

            if(execRedirect(cmdList[i]) == -1){ // then try redirect
                
                execOther(cmdList[i]);

            }

            
        }
    }
    
    freeCmdList(cmdList);
    if(notFormattedFlag!=-1) free(formattedInput);
}

int main(int argc, char *argv[]){
    if(argc > 1){
        char line[MAX_LINE_SIZE]; // 514
        FILE *f = fopen(argv[1], "r");
        if(f == NULL){ myPrint(error_message); exit(1); }
        
        while(fgets(line, MAX_LINE_SIZE, f)!=NULL){
            if(!isWhiteLine(line)){
                myPrint(line);
            }
            if(line[strlen(line)-1]!='\n' && (strlen(line) == MAX_LINE_SIZE-1)){

                while(fgets(line, MAX_LINE_SIZE, f)!=NULL){

                    if(strlen(line)==1 && line[0]=='\n'){
                        myPrint("\n");
                    }
                    if(!isWhiteLine(line)){
                        myPrint(line);
                    }
                    
                    if(line[strlen(line)-1] == '\n'){
                        break;
                    }
                } 
                myPrint(error_message);   

            }else{
                if(!isWhiteLine(line)){
                    myExec(line);
                }
            }
        }

        fclose(f);

    }else{
        char line[MAX_LINE_SIZE];
        while (1) {
            myPrint("myshell> ");
            if(fgets(line, MAX_LINE_SIZE, stdin)!=NULL){
                if(line[strlen(line)-1]!='\n' && (strlen(line) == MAX_LINE_SIZE-1)){
                    myPrint(error_message);   
                }else if(!isWhiteLine(line)){
                   myExec(line);
                }
                 
            }
        }
    }

    return 0;
}
