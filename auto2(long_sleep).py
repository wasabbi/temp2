import os


target = "./test_scheduling\(long_sleep\)"

# hw_bp_addr sched __start_routine //CPU_index is 0,1,2 in turn
hw_bp1 = [0x123457cb, 2, 0x12345786]
hw_bp2 = [0x1234583b, 1, 0x123457f6]
hw_bp3 = [-1, -1, 0]
#NOTICE: CPU_index should be responding to the binding CPU of thread1/thread2




















#========The following need not be modified========
#        PHASE 1: bind thread to CPU
#        PHASE 1.1: modify the thread_addr in libhook.c
addr = [hex(hw_bp1[0]), hex(hw_bp2[0]), hex(hw_bp3[0])]

sched = [str(hw_bp1[1]), str(hw_bp2[1]),str(hw_bp3[1])]

CPU_index = [str(0), str(1), str(2)]

__start_routine = [hex(hw_bp1[2]), hex(hw_bp2[2]), hex(hw_bp3[2])]

thread_addr = ['', '', '']

data = ''
with open('libhook.c', 'r+') as f:
    for line in f.readlines():
        if(line.find('void* thread1') == 0):
            line = 'void* thread1 = %s;' % (__start_routine[0],) + '\n'
        if(line.find('void* thread2') == 0):
            line = 'void* thread2 = %s;' % (__start_routine[1],) + '\n'
        if(line.find('void* thread3') == 0):
            line = 'void* thread3 = %s;' % (__start_routine[2],) + '\n'

        if(line.find('    hw_bps[0].addr =') == 0):
            line = '    hw_bps[0].addr = %s;' % (__start_routine[0],) + '\n'
        if(line.find('    hw_bps[1].addr =') == 0):
            line = '    hw_bps[1].addr = %s;' % (__start_routine[1],) + '\n'
        if(line.find('    hw_bps[1].addr =') == 0):
            line = '    hw_bps[1].addr = %s;' % (__start_routine[2],) + '\n'

        if(line.find('    hw_bps[0].sched =') == 0):
            line = '    hw_bps[0].sched = %s;' % (sched[0],) + '\n'
        if(line.find('    hw_bps[1].sched =') == 0):
            line = '    hw_bps[1].sched = %s;' % (sched[1],) + '\n'
        if(line.find('    hw_bps[2].sched =') == 0):
            line = '    hw_bps[2].sched = %s;' % (sched[2],) + '\n'

        if(line.find('    hw_bps[0].CPU_index =') == 0):
            line = '    hw_bps[0].CPU_index = %s;' % (CPU_index[0],) + '\n'
        if(line.find('    hw_bps[1].CPU_index =') == 0):
            line = '    hw_bps[1].CPU_index = %s;' % (CPU_index[1],) + '\n'
        if(line.find('    hw_bps[2].CPU_index =') == 0):
            line = '    hw_bps[2].CPU_index = %s;' % (CPU_index[2],) + '\n'


        if(line.find(    'hw_bps[0].__start_routine =') == 0):
            line = '    hw_bps[0].__start_routine = %s;' % (__start_routine[0],) + '\n'
        if(line.find('    hw_bps[1].__start_routine =') == 0):
            line = '    hw_bps[1].__start_routine = %s;' % (__start_routine[1],) + '\n'
        if(line.find('    hw_bps[2].__start_routine =') == 0):
            line = '    hw_bps[2].__start_routine = %s;' % (__start_routine[2],) + '\n'

        data += line
f.close()

with open('libhook.c', 'w') as f:
    f.writelines(data)
f.close()

#        PHASE 1.2: compile libhook.c
os.system('gcc -shared -fPIC -o libhook.so libhook.c -ldl')


#        PHASE 2: insert hw_bps & run
os.system('LD_PRELOAD="./libhook.so" %s' % (target,))
