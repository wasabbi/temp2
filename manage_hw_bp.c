#define _GNU_SOURCE
#include <string.h>
#include <stdio.h>
#include <stdint.h>
#include <dlfcn.h>
#include <pthread.h>
#define BUFFER_SIZE 100

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
//hw_bp_addr: 要下的硬件断点地址
//sched: 为1: go_first; 为2: go_second
//type: 为0: 删除 为1: 添加 为2: 管理开始（初始化） 为3： 管理结束
void manage_bp_hypercall(uint64_t hw_bp_addr, uint64_t sched, uint64_t CPU_index, uint64_t type){
    uint64_t a = 0x6464646464;  // insert hw_bp here when compling qemu
    if(type == 1){
        printf("called insert_bp_hypercall(uint64_t)\n");
        printf("hw_bp_addr: 0x%llx\n", hw_bp_addr);
        printf("sched: %d\n", sched);
        printf("CPU_index: 0x%llx\n", CPU_index);
    }
    else if(type == 0){
        printf("called remove_bp_hypercall(uint64_t)\n");
        printf("hw_bp_addr: 0x%llx\n", hw_bp_addr);
    }
    else if(type == 2){
        printf("manage_hw_bp started\n");
    }
    else if(type == 3){
        printf("manage_hw_bp ended\n");
    }
}

void main(){
	FILE *fp;
	char buffer[BUFFER_SIZE];
	
	//init
	manage_bp_hypercall(0, 0, 0, 2);

	fp = fopen("input.txt", "r");	//打开输入文件
	//input.txt: 
	//1 	(add bp)
	//400b1a 1 0	(hw_bp_addr sched CPU_index)
	//2 	(remove bp)
	//400b1a		(hw_bp)
	while(!feof(fp)){
		fgets(buffer, BUFFER_SIZE, fp);
		buffer[strlen(buffer)-1] = NULL;
		//printf("%s\n",buffer);
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

			manage_bp_hypercall(hw_bp_addr, sched, CPU_index, 1);
		}
		else if(strcmp(buffer, "2") == 0){	//删除断点
			uint64_t hw_bp_addr;
			fgets(buffer, BUFFER_SIZE, fp);
			buffer[strlen(buffer)-1] = NULL;
			hw_bp_addr = getUInt64fromHex(buffer);
			manage_bp_hypercall(hw_bp_addr, 0, 0, 0);
		}
		printf("\n");
	}
	fclose(fp);

	//init
	manage_bp_hypercall(0, 0, 0, 3);
}
