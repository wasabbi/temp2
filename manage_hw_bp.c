#define _GNU_SOURCE
#include <string.h>
#include <stdio.h>
#include <stdint.h>
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
//next_bp: 下一条指令地址 
void manage_bp_hypercall(uint64_t hw_bp_addr, uint64_t next_bp, uint64_t sched, uint64_t CPU_index, uint64_t isadd){
    uint64_t a = 0x6464646464;  // insert hw_bp here when compling qemu
    if(isadd){
        printf("called insert_bp_hypercall(uint64_t)\n");
        printf("hw_bp_addr: 0x%llx\n", hw_bp_addr);
        printf("next_bp: 0x%llx\n", next_bp);
        printf("sched: %d\n", sched);
        printf("CPU_index: 0x%llx\n", CPU_index);
    }
    else{
        printf("called remove_bp_hypercall(uint64_t)\n");
        printf("hw_bp_addr: 0x%llx\n", hw_bp_addr);
    }
}

void main(){
	FILE *fp;
	char buffer[BUFFER_SIZE];
	fp = fopen("input.txt", "r");	//打开输入文件
	//input.txt: 
	//1 	(add bp)
	//400b1a 1 400b21	(hw_bp_addr sched next_bp)
	//2 	(remove bp)
	//400b1a		(hw_bp)
	while(!feof(fp)){
		fgets(buffer, BUFFER_SIZE, fp);
		buffer[strlen(buffer)-1] = NULL;
		//printf("%s\n",buffer);
		if(strcmp(buffer, "1") == 0){	//插入断点
			uint64_t hw_bp_addr;
			uint64_t next_bp;
			uint64_t sched;
			uint64_t CPU_index;
			fgets(buffer, BUFFER_SIZE, fp);
			buffer[strlen(buffer)-1] = NULL;
			char* p = strtok(buffer, " ");
			hw_bp_addr = getUInt64fromHex(p);
			p = strtok(NULL, " ");
			next_bp = getUInt64fromHex(p);
			p = strtok(NULL, " ");
			sched = atoi(p);
			p = strtok(NULL, " ");
			CPU_index = atoi(p);
			manage_bp_hypercall(hw_bp_addr, next_bp, sched, CPU_index, 1);
		}
		else if(strcmp(buffer, "2") == 0){	//删除断点
			uint64_t hw_bp_addr;
			fgets(buffer, BUFFER_SIZE, fp);
			buffer[strlen(buffer)-1] = NULL;
			hw_bp_addr = getUInt64fromHex(buffer);
			manage_bp_hypercall(hw_bp_addr, 0, 0, 0, 0);
		}
		printf("\n");
	}
	fclose(fp);
}
