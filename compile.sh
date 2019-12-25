gcc -shared -fPIC -o libhook.so libhook.c -ldl
gcc -Ttext 0x50000000 -no-pie -o manage_hw_bp manage_hw_bp.c
