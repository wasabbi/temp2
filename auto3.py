import os


target = "./test_scheduling\(not_concurrent\)"

#thread_function_addr
thread1_addr = 0x12345786	# bind to CPU0
thread2_addr = 0x12345866	# bind to CPU1


# hw_bp sched CPU_index
manage_hw_bp_input = """1
123457cb 2 0
1
123458ab 1 1
3"""
#NOTICE: CPU_index should be responding to the binding CPU of thread1/thread2




















#========The following need not be modified========
#        PHASE 1: bind thread to CPU
#        PHASE 1.1: modify the thread_addr in libhook.c
thread1_addr = hex(thread1_addr)
thread2_addr = hex(thread2_addr)

data = ''

with open('libhook.c', 'r+') as f:
    for line in f.readlines():
        if(line.find('void* thread1') == 0):
            line = 'void* thread1 = %s;' % (thread1_addr,) + '\n'
        if(line.find('void* thread2') == 0):
            line = 'void* thread2 = %s;' % (thread2_addr,) + '\n'
        data += line

with open('libhook.c', 'r+') as f:
    f.writelines(data)
f.close()

#        PHASE 1.2: compile libhook.c
os.system('gcc -shared -fPIC -o libhook.so libhook.c -ldl')




#        PHASE 2: insert hw_bps
#        PHASE 2.1: create input.txt
with open('input.txt', 'w+') as f:
    f.write(manage_hw_bp_input)
f.close()

#        PHASE 2.2: run manage_hw_bp
os.system('./manage_hw_bp')



#        PHASE 3: insert hw_bps
os.system('LD_PRELOAD="./libhook.so" %s' % (target,))





