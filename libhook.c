#define _GNU_SOURCE


#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <dlfcn.h>
#include <pthread.h>
#include <sys/syscall.h>
#include <sys/mman.h>

typedef int (*orig_pthread_create_ftype)(pthread_t *, const pthread_attr_t *, void* (void *), void *);

void* thread1 = 0x12345767;
void* thread2 = 0x123457d7;
void* thread3 = 0x0;

static int flag1 = 0;

uint64_t getUInt64fromHex(char const *str)
{
    uint64_t accumulator = 0;
    for (size_t i = 0 ; isxdigit((unsigned char)str[i]) ; ++i)
    {
        char c = str[i];
        accumulator *= 16;
        if (isdigit(c)) /* '0' .. '9'*/
            accumulator += c - '0';
        else if (isupper(c)) /* 'A' .. 'F'*/
            accumulator += c - 'A' + 10;
        else /* 'a' .. 'f'*/
            accumulator += c - 'a' + 10;

    }

    return accumulator;
}

void (*sc)();
char manage_hw_bp_code[] = 
"\x48\x8b\x7d\xf8"  //"mov %rdi, [%rbp-0x8]"
"\x48\x8b\x75\xf0"  //"mov %rsi, [%rbp-0x10]"
"\x48\x8b\x55\xe8"  //"mov %rdx, [%rbp-0x18]"
"\x48\x8b\x4d\xe0"  //"mov %rcx, [%rbp-0x20]"
"\x48\xb8\x64\x64\x64\x64\x64\x00\x00\x00\xc3"; //bp for manage_hw_bp

void mmap_init(){
    void *ptr = mmap(0x5ff11000, sizeof(manage_hw_bp_code),PROT_EXEC | PROT_WRITE | PROT_READ, MAP_ANON | MAP_PRIVATE, -1, 0);
    if(ptr == MAP_FAILED)
    {
        perror("mmap");
        exit(-1);
    }
    sc = ptr;
    printf("mmap addr: %x\n", ptr);
    memcpy(ptr, manage_hw_bp_code, sizeof(manage_hw_bp_code));
}

void hw_bp_insert(uint64_t hw_bp_addr, uint64_t sched, uint64_t CPU_index, uint64_t type){
    sc();
}

void manage_hw_bp(){
    FILE *fp;
#define BUFFER_SIZE 100
    char buffer[BUFFER_SIZE];

    //manage_hw_bp start (init))
    hw_bp_insert(0, 0, 0, 2);

    fp = fopen("input.txt", "r");	//打开输入文件
    //input.txt: 
    //1 	(add bp)
    //400b1a 1 0	(hw_bp_addr sched CPU_index)
    //2 	(remove bp)
    //400b1a		(hw_bp)
    while(!feof(fp)){
        fgets(buffer, BUFFER_SIZE, fp);
        buffer[strlen(buffer)-1] = NULL;
        if(strcmp(buffer, "1") == 0){	//插入断点
            uint64_t hw_bp_addr;
            uint64_t sched;
            uint64_t CPU_index;
            fgets(buffer, BUFFER_SIZE, fp);
            buffer[strlen(buffer)-1] = NULL;
            char* p = strtok(buffer, " ");
            hw_bp_addr = getUInt64fromHex(p);
            p = strtok(NULL, " ");
            sched = atoi(p);
            p = strtok(NULL, " ");
            CPU_index = atoi(p);

            cpu_set_t mask1;
            CPU_ZERO(&mask1);
            CPU_SET(CPU_index, &mask1);
            if (pthread_setaffinity_np(pthread_self(),sizeof(mask1),&mask1) < 0)	//bind the thread to CPUi
                fprintf(stderr,"set thread affinity failed\n");
            hw_bp_insert(hw_bp_addr, sched, CPU_index, 1);
        }
        printf("\n");
    }
    fclose(fp);

    //manage_hw_bp end
    hw_bp_insert(0, 0, 0, 3);
}


struct mypara{
    void *(*__orig_start_routine) (void *);
    void *__orig_arg;
};

void *transition_func(void *arg){
    void *(*__orig_start_routine) (void *);
    void *__orig_arg;
    struct mypara *mp;
    mp = (struct mypara*)arg;
    __orig_start_routine = mp->__orig_start_routine;
    __orig_arg = mp->__orig_arg;

    printf("[libhook.so] child gettid = %u\n", syscall(SYS_gettid));  
    printf("[libhook.so] child pthread_self= %u\n", (unsigned int)pthread_self());    

    if(__orig_start_routine == thread1){
        mmap_init();
        printf("[libhook.so] manage_hw_bp has run\n");
        manage_hw_bp();
        printf("[libhook.so] manage_hw_bp has ended\n");
        flag1 = 1;
    }
    else if(__orig_start_routine != thread1){
        while(flag1 == 0){
            //wait for manage_hw_bp
        }
    }

    printf("[libhook.so] Transition_func started\n");
    __orig_start_routine(__orig_arg);
    printf("[libhook.so] Transition_func ended\n");
}

int pthread_create(pthread_t *__restrict __newthread,
                    const pthread_attr_t *__restrict __attr,
                    void *(*__start_routine) (void *),
                    void *__restrict __arg){

    int ret;

    orig_pthread_create_ftype orig_pthread_create;
    orig_pthread_create = (orig_pthread_create_ftype)dlsym(RTLD_NEXT, "pthread_create");

    if(__start_routine == thread1){
        cpu_set_t mask1;
        CPU_ZERO(&mask1);
        CPU_SET(0, &mask1);
        if (pthread_setaffinity_np(pthread_self(),sizeof(mask1),&mask1) < 0)                  //bind the thread1 to CPU0
            fprintf(stderr,"set thread affinity failed\n");
        //printf("[libhook.so] Thread1 binds to CPU0\n");

        struct mypara mp;
        mp.__orig_start_routine = __start_routine;
        mp.__orig_arg = __arg;
        ret = (*orig_pthread_create)(__newthread, __attr, transition_func, &mp);

        cpu_set_t mask2;
        CPU_ZERO(&mask2);
        CPU_SET(3, &mask2);
        if (pthread_setaffinity_np(pthread_self(),sizeof(mask2),&mask2) < 0)                  //bind the caller thread to CPU3
            fprintf(stderr,"set thread affinity failed\n");
        //printf("[libhook.so] Caller Thread binds to CPU3\n");
    }
    else if(__start_routine == thread2){
        cpu_set_t mask1;
        CPU_ZERO(&mask1);
        CPU_SET(1, &mask1);
        if (pthread_setaffinity_np(pthread_self(),sizeof(mask1),&mask1) < 0)                  //bind the thread2 to CPU1
            fprintf(stderr,"set thread affinity failed\n");
        //printf("[libhook.so] Thread2 binds to CPU1\n");

        struct mypara mp;
        mp.__orig_start_routine = __start_routine;
        mp.__orig_arg = __arg;
        ret = (*orig_pthread_create)(__newthread, __attr, transition_func, &mp);

        cpu_set_t mask2;
        CPU_ZERO(&mask2);
        CPU_SET(3, &mask2);
        if (pthread_setaffinity_np(pthread_self(),sizeof(mask2),&mask2) < 0)                  //bind the caller thread to CPU3
            fprintf(stderr,"set thread affinity failed\n");
        //printf("[libhook.so] Caller Thread binds to CPU3\n");
    }
    else if(__start_routine == thread3){
        cpu_set_t mask1;
        CPU_ZERO(&mask1);
        CPU_SET(2, &mask1);
        if (pthread_setaffinity_np(pthread_self(),sizeof(mask1),&mask1) < 0)                  //bind the thread3 to CPU2
        fprintf(stderr,"set thread affinity failed\n");
        //printf("[libhook.so] Thread3 binds to CPU2\n");
        
        struct mypara mp;
        mp.__orig_start_routine = __start_routine;
        mp.__orig_arg = __arg;
        ret = (*orig_pthread_create)(__newthread, __attr, transition_func, &mp);

        cpu_set_t mask2;
        CPU_ZERO(&mask2);
        CPU_SET(3, &mask2);
        if (pthread_setaffinity_np(pthread_self(),sizeof(mask2),&mask2) < 0)                  //bind the caller thread to CPU3
            fprintf(stderr,"set thread affinity failed\n");
        //printf("[libhook.so] Caller Thread binds to CPU3\n");
    }
    else{
        ret = (*orig_pthread_create)(__newthread, __attr, __start_routine, __arg);
    }

    return ret;
}
