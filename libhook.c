#define _GNU_SOURCE


#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <dlfcn.h>
#include <pthread.h>
#include <sys/syscall.h>
#include <sys/mman.h>

typedef int (*orig_pthread_create_ftype)(pthread_t *, const pthread_attr_t *, void* (void *), void *);

static int wait_init = 1;
static int wait_insert_all = 1;
static int wait_manage_end = 1;
static int thread_end = 0;

void* thread1 = 0x12345767;
void* thread2 = 0x123457d7;
void* thread3 = 0x0;
static int thread_num = 0;

struct hw_bp{
    uint64_t addr;
    uint64_t sched;
    uint64_t CPU_index;
    uint64_t __start_routine;
};

struct hw_bp *hw_bps[4];

struct mypara{
    void *(*__orig_start_routine) (void *);
    void *__orig_arg;
};

void (*sc)();
char manage_hw_bp_code[] = 
"\x48\x8b\x7d\xf8"  //"mov %rdi, [%rbp-0x8]"
"\x48\x8b\x75\xf0"  //"mov %rsi, [%rbp-0x10]"
"\x48\x8b\x55\xe8"  //"mov %rdx, [%rbp-0x18]"
"\x48\x8b\x4d\xe0"  //"mov %rcx, [%rbp-0x20]"
"\x48\xb8\x64\x64\x64\x64\x64\x00\x00\x00\x90\x90\x90\x90\xc3\x90"; //bp for manage_hw_bp

void init(){
    int i = 0;
    for(;i < 3; i++){
        hw_bps[i] = malloc(sizeof(struct hw_bp));
    }
    hw_bps[0]->addr = 0x123457ac;
    hw_bps[0]->sched = 2;
    hw_bps[0]->CPU_index = 0;
    hw_bps[0]->__start_routine = 0x0;
    
    hw_bps[1]->addr = 0x1234581c;
    hw_bps[1]->sched = 1;
    hw_bps[1]->CPU_index = 1;
    hw_bps[1]->__start_routine = 0x123457d7;

    hw_bps[2]->addr = 0x0;
    hw_bps[2]->sched = 0;
    hw_bps[2]->CPU_index = 2;
    hw_bps[2]->__start_routine = 0x0;

    thread_num = (thread1 != 0) + (thread2 != 0) + (thread3 != 0);

    void *ptr = mmap(0x5ff11000, sizeof(manage_hw_bp_code),PROT_EXEC | PROT_WRITE | PROT_READ, MAP_ANON | MAP_PRIVATE, -1, 0);
    if(ptr == MAP_FAILED)
    {
        perror("mmap");
        exit(-1);
    }
    sc = ptr;
    //printf("mmap addr: %x\n", ptr);
    memcpy(ptr, manage_hw_bp_code, sizeof(manage_hw_bp_code));
}

void hw_bp_insert(uint64_t hw_bp_addr, uint64_t sched, uint64_t CPU_index, uint64_t type){
    sc();
}

void *transition_func(void *arg){
    void *(*__orig_start_routine) (void *);
    void *__orig_arg;
    struct mypara *mp;
    mp = (struct mypara*)arg;
    __orig_start_routine = mp->__orig_start_routine;
    __orig_arg = mp->__orig_arg;


    if(__orig_start_routine == thread1){
        printf("[libhook.so] Thread1: child gettid = %u \n", syscall(SYS_gettid));  
        printf("[libhook.so] Thread1: child pthread_self= %u\n", (unsigned int)pthread_self());   
        cpu_set_t mask1;
        CPU_ZERO(&mask1);
        CPU_SET(0, &mask1);
        if (pthread_setaffinity_np(pthread_self(),sizeof(mask1),&mask1) < 0)                  //bind the thread1 to CPU0
            printf("set thread affinity failed\n");
        init();
        hw_bp_insert(0, 0, 0, 2);   //start manage_hw_bp
        wait_init = 0;
        int i = 0;
        for(;i < 3; i++){
            if(hw_bps[i]->CPU_index == 0)
                hw_bp_insert(hw_bps[i]->addr, hw_bps[i]->sched, 0, 1);
        }
        while(wait_insert_all == 1){ }
        hw_bp_insert(0, 0, 0, 3);   //end manage_hw_bp
        wait_manage_end = 0;
        printf("[libhook.so] Thread1: Transition_func started\n");
    }
    else if(__orig_start_routine == thread2){
        printf("[libhook.so] Thread2: child gettid = %u\n", syscall(SYS_gettid));  
        printf("[libhook.so] Thread2: child pthread_self= %u\n", (unsigned int)pthread_self());
        cpu_set_t mask1;
        CPU_ZERO(&mask1);
        CPU_SET(1, &mask1);
        if (pthread_setaffinity_np(pthread_self(),sizeof(mask1),&mask1) < 0)                  //bind the thread1 to CPU0
            printf("set thread affinity failed\n");

        while(wait_init == 1){ }
        int i = 0;
        for(;i < 3; i++){
            if(hw_bps[i]->CPU_index == 1)
                hw_bp_insert(hw_bps[i]->addr, hw_bps[i]->sched, 1, 1);
        }
        wait_insert_all = 0;
        while(wait_manage_end == 1) { }
        printf("[libhook.so] Thread2: Transition_func started\n");
    }
    else if(__orig_start_routine == thread3){
        printf("[libhook.so] Thread3: child gettid = %u\n", syscall(SYS_gettid));  
        printf("[libhook.so] Thread3: child pthread_self= %u\n", (unsigned int)pthread_self()); 
        cpu_set_t mask1;
        CPU_ZERO(&mask1);
        CPU_SET(2, &mask1);
        if (pthread_setaffinity_np(pthread_self(),sizeof(mask1),&mask1) < 0)                  //bind the thread1 to CPU0
            printf("set thread affinity failed\n");
        
        while(wait_init == 1){ }
        int i = 0;
        for(;i < 3; i++){
            if(hw_bps[i]->CPU_index == 2)
                hw_bp_insert(hw_bps[i]->addr, hw_bps[i]->sched, 2, 1);
        }
        while(wait_manage_end == 1) { }
        printf("[libhook.so] Thread3: Transition_func started\n");
    }
    hw_bp_insert(0, 0, 0, 4);   //start of __start_routine
    __orig_start_routine(__orig_arg);
    hw_bp_insert(0, 0, 0, 5);   //start of __start_routine
    printf("[libhook.so] Transition_func ended\n");
    thread_end ++;
    while(thread_end != thread_num) { } // wait to all threads end
}

int pthread_create(pthread_t *__restrict __newthread,
                    const pthread_attr_t *__restrict __attr,
                    void *(*__start_routine) (void *),
                    void *__restrict __arg){

    int ret;

    orig_pthread_create_ftype orig_pthread_create;
    orig_pthread_create = (orig_pthread_create_ftype)dlsym(RTLD_NEXT, "pthread_create");

    if(__start_routine == thread1 || __start_routine == thread2 || __start_routine == thread3){
        struct mypara *mp = malloc(sizeof(struct mypara));
        mp->__orig_start_routine = __start_routine;
        mp->__orig_arg = __arg;
        ret = (*orig_pthread_create)(__newthread, __attr, transition_func, mp);
    }
    else{
        ret = (*orig_pthread_create)(__newthread, __attr, __start_routine, __arg);
    }

    return ret;
}
