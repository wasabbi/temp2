#include <pthread.h>
#include <stdio.h>

int x = 0;

/* this function is run by the second thread */
void *A()
{
	printf("A: x is %d\n", x);
	sleep(1);
	printf("A: x is %d\n", x);
	x += 10;
	printf("A: x is %d\n", x);
}

void *B()
{
	printf("B: x is %d\n", x);
	sleep(2);
	printf("B: x is %d\n", x);
	x += 10;
	printf("B: x is %d\n", x);
}

int main()
{
	pthread_t A_thread, B_thread;
	if(pthread_create(&A_thread, NULL, A, NULL)) {
		fprintf(stderr, "Error creating thread\n");
		return 1;
	}
	if(pthread_create(&B_thread, NULL, B, NULL)) {
		fprintf(stderr, "Error creating thread\n");
		return 1;
	}
	if(pthread_join(A_thread, NULL)) {
		fprintf(stderr, "Error joining thread\n");
		return 2;
	}
	if(pthread_join(B_thread, NULL)) {
		fprintf(stderr, "Error joining thread\n");
		return 2;
	}
	printf("program exited\n");
	return 0;
}
