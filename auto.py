import os


target = "./test_scheduling"

thread1_addr = 0x12345876
thread2_addr = 0x123458c1

manage_hw_bp_input = """1
12345123 2 123457b2
1
1234581c 1 12345822
3"""










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





