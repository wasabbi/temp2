#define _GNU_SOURCE


#include <stdio.h>
#include <dlfcn.h>
#include <pthread.h>
#include <sys/syscall.h>

typedef int (*orig_pthread_create_ftype)(pthread_t *, const pthread_attr_t *, void* (void *), void *);

void* thread1 = 0x12345767;
void* thread2 = 0x123457d7;
void* thread3 = 0x0;

static int flag1 = 0;

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
        printf("[libhook.so] manage_hw_bp has run\n");
        system("./manage_hw_bp");
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
