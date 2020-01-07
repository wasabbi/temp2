#define _GNU_SOURCE


#include <stdio.h>
#include <dlfcn.h>
#include <pthread.h>

typedef int (*orig_pthread_create_ftype)(pthread_t *, const pthread_attr_t *, void* (void *), void *);

void* thread1 = 0x400e5d;
void* thread2 = 0x400eac;
void* thread3 = 0x0;

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
        printf("Thread1 binds to CPU0\n");
        ret = (*orig_pthread_create)(__newthread, __attr, __start_routine, __arg);
    }
    else if(__start_routine == thread2){
        cpu_set_t mask1;
        CPU_ZERO(&mask1);
        CPU_SET(1, &mask1);
        if (pthread_setaffinity_np(pthread_self(),sizeof(mask1),&mask1) < 0)                  //bind the thread2 to CPU1
            fprintf(stderr,"set thread affinity failed\n");
        printf("Thread2 binds to CPU1\n");
        ret = (*orig_pthread_create)(__newthread, __attr, __start_routine, __arg);
    }
    else if(__start_routine == thread3){
        cpu_set_t mask1;
        CPU_ZERO(&mask1);
        CPU_SET(2, &mask1);
        if (pthread_setaffinity_np(pthread_self(),sizeof(mask1),&mask1) < 0)                  //bind the thread3 to CPU2
            fprintf(stderr,"set thread affinity failed\n");
        printf("Thread3 binds to CPU2\n");
        ret = (*orig_pthread_create)(__newthread, __attr, __start_routine, __arg);
    }
    else{
        ret = (*orig_pthread_create)(__newthread, __attr, __start_routine, __arg);
    }
    
    return ret;
}
