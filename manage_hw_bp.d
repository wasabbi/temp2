
manage_hw_bp:     file format elf64-x86-64


Disassembly of section .text:

0000000050000000 <_start>:
    50000000:	31 ed                	xor    %ebp,%ebp
    50000002:	49 89 d1             	mov    %rdx,%r9
    50000005:	5e                   	pop    %rsi
    50000006:	48 89 e2             	mov    %rsp,%rdx
    50000009:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    5000000d:	50                   	push   %rax
    5000000e:	54                   	push   %rsp
    5000000f:	49 c7 c0 c0 04 00 50 	mov    $0x500004c0,%r8
    50000016:	48 c7 c1 50 04 00 50 	mov    $0x50000450,%rcx
    5000001d:	48 c7 c7 32 02 00 50 	mov    $0x50000232,%rdi
    50000024:	ff 15 c6 0f 20 00    	callq  *0x200fc6(%rip)        # 50200ff0 <__libc_start_main@GLIBC_2.2.5>
    5000002a:	f4                   	hlt    
    5000002b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000050000030 <_dl_relocate_static_pie>:
    50000030:	f3 c3                	repz retq 
    50000032:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    50000039:	00 00 00 
    5000003c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000050000040 <deregister_tm_clones>:
    50000040:	55                   	push   %rbp
    50000041:	b8 98 10 20 50       	mov    $0x50201098,%eax
    50000046:	48 3d 98 10 20 50    	cmp    $0x50201098,%rax
    5000004c:	48 89 e5             	mov    %rsp,%rbp
    5000004f:	74 17                	je     50000068 <deregister_tm_clones+0x28>
    50000051:	b8 00 00 00 00       	mov    $0x0,%eax
    50000056:	48 85 c0             	test   %rax,%rax
    50000059:	74 0d                	je     50000068 <deregister_tm_clones+0x28>
    5000005b:	5d                   	pop    %rbp
    5000005c:	bf 98 10 20 50       	mov    $0x50201098,%edi
    50000061:	ff e0                	jmpq   *%rax
    50000063:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    50000068:	5d                   	pop    %rbp
    50000069:	c3                   	retq   
    5000006a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000050000070 <register_tm_clones>:
    50000070:	be 98 10 20 50       	mov    $0x50201098,%esi
    50000075:	55                   	push   %rbp
    50000076:	48 81 ee 98 10 20 50 	sub    $0x50201098,%rsi
    5000007d:	48 89 e5             	mov    %rsp,%rbp
    50000080:	48 c1 fe 03          	sar    $0x3,%rsi
    50000084:	48 89 f0             	mov    %rsi,%rax
    50000087:	48 c1 e8 3f          	shr    $0x3f,%rax
    5000008b:	48 01 c6             	add    %rax,%rsi
    5000008e:	48 d1 fe             	sar    %rsi
    50000091:	74 15                	je     500000a8 <register_tm_clones+0x38>
    50000093:	b8 00 00 00 00       	mov    $0x0,%eax
    50000098:	48 85 c0             	test   %rax,%rax
    5000009b:	74 0b                	je     500000a8 <register_tm_clones+0x38>
    5000009d:	5d                   	pop    %rbp
    5000009e:	bf 98 10 20 50       	mov    $0x50201098,%edi
    500000a3:	ff e0                	jmpq   *%rax
    500000a5:	0f 1f 00             	nopl   (%rax)
    500000a8:	5d                   	pop    %rbp
    500000a9:	c3                   	retq   
    500000aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000500000b0 <__do_global_dtors_aux>:
    500000b0:	80 3d e1 0f 20 00 00 	cmpb   $0x0,0x200fe1(%rip)        # 50201098 <__TMC_END__>
    500000b7:	75 17                	jne    500000d0 <__do_global_dtors_aux+0x20>
    500000b9:	55                   	push   %rbp
    500000ba:	48 89 e5             	mov    %rsp,%rbp
    500000bd:	e8 7e ff ff ff       	callq  50000040 <deregister_tm_clones>
    500000c2:	c6 05 cf 0f 20 00 01 	movb   $0x1,0x200fcf(%rip)        # 50201098 <__TMC_END__>
    500000c9:	5d                   	pop    %rbp
    500000ca:	c3                   	retq   
    500000cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    500000d0:	f3 c3                	repz retq 
    500000d2:	0f 1f 40 00          	nopl   0x0(%rax)
    500000d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    500000dd:	00 00 00 

00000000500000e0 <frame_dummy>:
    500000e0:	55                   	push   %rbp
    500000e1:	48 89 e5             	mov    %rsp,%rbp
    500000e4:	5d                   	pop    %rbp
    500000e5:	eb 89                	jmp    50000070 <register_tm_clones>

00000000500000e7 <getUInt64fromHex>:
    500000e7:	55                   	push   %rbp
    500000e8:	48 89 e5             	mov    %rsp,%rbp
    500000eb:	48 83 ec 30          	sub    $0x30,%rsp
    500000ef:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    500000f3:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    500000fa:	00 
    500000fb:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    50000102:	00 
    50000103:	eb 61                	jmp    50000166 <getUInt64fromHex+0x7f>
    50000105:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    50000109:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5000010d:	48 01 d0             	add    %rdx,%rax
    50000110:	0f b6 00             	movzbl (%rax),%eax
    50000113:	88 45 ef             	mov    %al,-0x11(%rbp)
    50000116:	48 c1 65 f0 04       	shlq   $0x4,-0x10(%rbp)
    5000011b:	0f be 45 ef          	movsbl -0x11(%rbp),%eax
    5000011f:	83 e8 30             	sub    $0x30,%eax
    50000122:	83 f8 09             	cmp    $0x9,%eax
    50000125:	77 0f                	ja     50000136 <getUInt64fromHex+0x4f>
    50000127:	0f be 45 ef          	movsbl -0x11(%rbp),%eax
    5000012b:	83 e8 30             	sub    $0x30,%eax
    5000012e:	48 98                	cltq   
    50000130:	48 01 45 f0          	add    %rax,-0x10(%rbp)
    50000134:	eb 2b                	jmp    50000161 <getUInt64fromHex+0x7a>
    50000136:	0f be 45 ef          	movsbl -0x11(%rbp),%eax
    5000013a:	89 c7                	mov    %eax,%edi
    5000013c:	e8 7f 06 40 b0       	callq  4007c0 <isupper@plt>
    50000141:	85 c0                	test   %eax,%eax
    50000143:	74 0f                	je     50000154 <getUInt64fromHex+0x6d>
    50000145:	0f be 45 ef          	movsbl -0x11(%rbp),%eax
    50000149:	83 e8 37             	sub    $0x37,%eax
    5000014c:	48 98                	cltq   
    5000014e:	48 01 45 f0          	add    %rax,-0x10(%rbp)
    50000152:	eb 0d                	jmp    50000161 <getUInt64fromHex+0x7a>
    50000154:	0f be 45 ef          	movsbl -0x11(%rbp),%eax
    50000158:	83 e8 57             	sub    $0x57,%eax
    5000015b:	48 98                	cltq   
    5000015d:	48 01 45 f0          	add    %rax,-0x10(%rbp)
    50000161:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    50000166:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    5000016a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5000016e:	48 01 d0             	add    %rdx,%rax
    50000171:	0f b6 00             	movzbl (%rax),%eax
    50000174:	0f b6 c0             	movzbl %al,%eax
    50000177:	89 c7                	mov    %eax,%edi
    50000179:	e8 82 06 40 b0       	callq  400800 <isxdigit@plt>
    5000017e:	85 c0                	test   %eax,%eax
    50000180:	75 83                	jne    50000105 <getUInt64fromHex+0x1e>
    50000182:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    50000186:	c9                   	leaveq 
    50000187:	c3                   	retq   

0000000050000188 <manage_bp_hypercall>:
    50000188:	55                   	push   %rbp
    50000189:	48 89 e5             	mov    %rsp,%rbp
    5000018c:	48 83 ec 30          	sub    $0x30,%rsp
    50000190:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    50000194:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    50000198:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    5000019c:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    500001a0:	48 b8 64 64 64 64 64 	movabs $0x6464646464,%rax
    500001a7:	00 00 00 
    500001aa:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    500001ae:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    500001b3:	74 56                	je     5000020b <manage_bp_hypercall+0x83>
    500001b5:	48 8d 3d 1c 03 00 00 	lea    0x31c(%rip),%rdi        # 500004d8 <_IO_stdin_used+0x8>
    500001bc:	e8 7f 05 40 b0       	callq  400740 <puts@plt>
    500001c1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    500001c5:	48 89 c6             	mov    %rax,%rsi
    500001c8:	48 8d 3d 2e 03 00 00 	lea    0x32e(%rip),%rdi        # 500004fd <_IO_stdin_used+0x2d>
    500001cf:	b8 00 00 00 00       	mov    $0x0,%eax
    500001d4:	e8 a7 05 40 b0       	callq  400780 <printf@plt>
    500001d9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    500001dd:	48 89 c6             	mov    %rax,%rsi
    500001e0:	48 8d 3d 2a 03 00 00 	lea    0x32a(%rip),%rdi        # 50000511 <_IO_stdin_used+0x41>
    500001e7:	b8 00 00 00 00       	mov    $0x0,%eax
    500001ec:	e8 8f 05 40 b0       	callq  400780 <printf@plt>
    500001f1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    500001f5:	48 89 c6             	mov    %rax,%rsi
    500001f8:	48 8d 3d 1d 03 00 00 	lea    0x31d(%rip),%rdi        # 5000051c <_IO_stdin_used+0x4c>
    500001ff:	b8 00 00 00 00       	mov    $0x0,%eax
    50000204:	e8 77 05 40 b0       	callq  400780 <printf@plt>
    50000209:	eb 24                	jmp    5000022f <manage_bp_hypercall+0xa7>
    5000020b:	48 8d 3d 1e 03 00 00 	lea    0x31e(%rip),%rdi        # 50000530 <_IO_stdin_used+0x60>
    50000212:	e8 29 05 40 b0       	callq  400740 <puts@plt>
    50000217:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5000021b:	48 89 c6             	mov    %rax,%rsi
    5000021e:	48 8d 3d d8 02 00 00 	lea    0x2d8(%rip),%rdi        # 500004fd <_IO_stdin_used+0x2d>
    50000225:	b8 00 00 00 00       	mov    $0x0,%eax
    5000022a:	e8 51 05 40 b0       	callq  400780 <printf@plt>
    5000022f:	90                   	nop
    50000230:	c9                   	leaveq 
    50000231:	c3                   	retq   

0000000050000232 <main>:
    50000232:	55                   	push   %rbp
    50000233:	48 89 e5             	mov    %rsp,%rbp
    50000236:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
    5000023d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    50000244:	00 00 
    50000246:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5000024a:	31 c0                	xor    %eax,%eax
    5000024c:	48 8d 35 02 03 00 00 	lea    0x302(%rip),%rsi        # 50000555 <_IO_stdin_used+0x85>
    50000253:	48 8d 3d fd 02 00 00 	lea    0x2fd(%rip),%rdi        # 50000557 <_IO_stdin_used+0x87>
    5000025a:	e8 71 05 40 b0       	callq  4007d0 <fopen@plt>
    5000025f:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
    50000266:	e9 9f 01 00 00       	jmpq   5000040a <main+0x1d8>
    5000026b:	48 8b 95 60 ff ff ff 	mov    -0xa0(%rbp),%rdx
    50000272:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    50000276:	be 64 00 00 00       	mov    $0x64,%esi
    5000027b:	48 89 c7             	mov    %rax,%rdi
    5000027e:	e8 0d 05 40 b0       	callq  400790 <fgets@plt>
    50000283:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    50000287:	48 89 c7             	mov    %rax,%rdi
    5000028a:	e8 d1 04 40 b0       	callq  400760 <strlen@plt>
    5000028f:	48 83 e8 01          	sub    $0x1,%rax
    50000293:	c6 44 05 90 00       	movb   $0x0,-0x70(%rbp,%rax,1)
    50000298:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5000029c:	48 8d 35 be 02 00 00 	lea    0x2be(%rip),%rsi        # 50000561 <_IO_stdin_used+0x91>
    500002a3:	48 89 c7             	mov    %rax,%rdi
    500002a6:	e8 f5 04 40 b0       	callq  4007a0 <strcmp@plt>
    500002ab:	85 c0                	test   %eax,%eax
    500002ad:	0f 85 d8 00 00 00    	jne    5000038b <main+0x159>
    500002b3:	48 8b 95 60 ff ff ff 	mov    -0xa0(%rbp),%rdx
    500002ba:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    500002be:	be 64 00 00 00       	mov    $0x64,%esi
    500002c3:	48 89 c7             	mov    %rax,%rdi
    500002c6:	e8 c5 04 40 b0       	callq  400790 <fgets@plt>
    500002cb:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    500002cf:	48 89 c7             	mov    %rax,%rdi
    500002d2:	e8 89 04 40 b0       	callq  400760 <strlen@plt>
    500002d7:	48 83 e8 01          	sub    $0x1,%rax
    500002db:	c6 44 05 90 00       	movb   $0x0,-0x70(%rbp,%rax,1)
    500002e0:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    500002e4:	48 8d 35 78 02 00 00 	lea    0x278(%rip),%rsi        # 50000563 <_IO_stdin_used+0x93>
    500002eb:	48 89 c7             	mov    %rax,%rdi
    500002ee:	e8 ed 04 40 b0       	callq  4007e0 <strtok@plt>
    500002f3:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
    500002fa:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    50000301:	48 89 c7             	mov    %rax,%rdi
    50000304:	e8 de fd ff ff       	callq  500000e7 <getUInt64fromHex>
    50000309:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
    50000310:	48 8d 35 4c 02 00 00 	lea    0x24c(%rip),%rsi        # 50000563 <_IO_stdin_used+0x93>
    50000317:	bf 00 00 00 00       	mov    $0x0,%edi
    5000031c:	e8 bf 04 40 b0       	callq  4007e0 <strtok@plt>
    50000321:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
    50000328:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    5000032f:	48 89 c7             	mov    %rax,%rdi
    50000332:	b8 00 00 00 00       	mov    $0x0,%eax
    50000337:	e8 b4 04 40 b0       	callq  4007f0 <atoi@plt>
    5000033c:	48 98                	cltq   
    5000033e:	48 89 45 80          	mov    %rax,-0x80(%rbp)
    50000342:	48 8d 35 1a 02 00 00 	lea    0x21a(%rip),%rsi        # 50000563 <_IO_stdin_used+0x93>
    50000349:	bf 00 00 00 00       	mov    $0x0,%edi
    5000034e:	e8 8d 04 40 b0       	callq  4007e0 <strtok@plt>
    50000353:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
    5000035a:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    50000361:	48 89 c7             	mov    %rax,%rdi
    50000364:	e8 7e fd ff ff       	callq  500000e7 <getUInt64fromHex>
    50000369:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    5000036d:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
    50000371:	48 8b 75 80          	mov    -0x80(%rbp),%rsi
    50000375:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    5000037c:	b9 01 00 00 00       	mov    $0x1,%ecx
    50000381:	48 89 c7             	mov    %rax,%rdi
    50000384:	e8 ff fd ff ff       	callq  50000188 <manage_bp_hypercall>
    50000389:	eb 75                	jmp    50000400 <main+0x1ce>
    5000038b:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5000038f:	48 8d 35 cf 01 00 00 	lea    0x1cf(%rip),%rsi        # 50000565 <_IO_stdin_used+0x95>
    50000396:	48 89 c7             	mov    %rax,%rdi
    50000399:	e8 02 04 40 b0       	callq  4007a0 <strcmp@plt>
    5000039e:	85 c0                	test   %eax,%eax
    500003a0:	75 5e                	jne    50000400 <main+0x1ce>
    500003a2:	48 8b 95 60 ff ff ff 	mov    -0xa0(%rbp),%rdx
    500003a9:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    500003ad:	be 64 00 00 00       	mov    $0x64,%esi
    500003b2:	48 89 c7             	mov    %rax,%rdi
    500003b5:	e8 d6 03 40 b0       	callq  400790 <fgets@plt>
    500003ba:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    500003be:	48 89 c7             	mov    %rax,%rdi
    500003c1:	e8 9a 03 40 b0       	callq  400760 <strlen@plt>
    500003c6:	48 83 e8 01          	sub    $0x1,%rax
    500003ca:	c6 44 05 90 00       	movb   $0x0,-0x70(%rbp,%rax,1)
    500003cf:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    500003d3:	48 89 c7             	mov    %rax,%rdi
    500003d6:	e8 0c fd ff ff       	callq  500000e7 <getUInt64fromHex>
    500003db:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    500003e2:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    500003e9:	b9 00 00 00 00       	mov    $0x0,%ecx
    500003ee:	ba 00 00 00 00       	mov    $0x0,%edx
    500003f3:	be 00 00 00 00       	mov    $0x0,%esi
    500003f8:	48 89 c7             	mov    %rax,%rdi
    500003fb:	e8 88 fd ff ff       	callq  50000188 <manage_bp_hypercall>
    50000400:	bf 0a 00 00 00       	mov    $0xa,%edi
    50000405:	e8 26 03 40 b0       	callq  400730 <putchar@plt>
    5000040a:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
    50000411:	48 89 c7             	mov    %rax,%rdi
    50000414:	e8 97 03 40 b0       	callq  4007b0 <feof@plt>
    50000419:	85 c0                	test   %eax,%eax
    5000041b:	0f 84 4a fe ff ff    	je     5000026b <main+0x39>
    50000421:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
    50000428:	48 89 c7             	mov    %rax,%rdi
    5000042b:	e8 20 03 40 b0       	callq  400750 <fclose@plt>
    50000430:	90                   	nop
    50000431:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    50000435:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    5000043c:	00 00 
    5000043e:	74 05                	je     50000445 <main+0x213>
    50000440:	e8 2b 03 40 b0       	callq  400770 <__stack_chk_fail@plt>
    50000445:	c9                   	leaveq 
    50000446:	c3                   	retq   
    50000447:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    5000044e:	00 00 

0000000050000450 <__libc_csu_init>:
    50000450:	41 57                	push   %r15
    50000452:	41 56                	push   %r14
    50000454:	49 89 d7             	mov    %rdx,%r15
    50000457:	41 55                	push   %r13
    50000459:	41 54                	push   %r12
    5000045b:	4c 8d 25 ae 09 20 00 	lea    0x2009ae(%rip),%r12        # 50200e10 <__frame_dummy_init_array_entry>
    50000462:	55                   	push   %rbp
    50000463:	48 8d 2d ae 09 20 00 	lea    0x2009ae(%rip),%rbp        # 50200e18 <__init_array_end>
    5000046a:	53                   	push   %rbx
    5000046b:	41 89 fd             	mov    %edi,%r13d
    5000046e:	49 89 f6             	mov    %rsi,%r14
    50000471:	4c 29 e5             	sub    %r12,%rbp
    50000474:	48 83 ec 08          	sub    $0x8,%rsp
    50000478:	48 c1 fd 03          	sar    $0x3,%rbp
    5000047c:	e8 87 02 40 b0       	callq  400708 <_init>
    50000481:	48 85 ed             	test   %rbp,%rbp
    50000484:	74 20                	je     500004a6 <__libc_csu_init+0x56>
    50000486:	31 db                	xor    %ebx,%ebx
    50000488:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    5000048f:	00 
    50000490:	4c 89 fa             	mov    %r15,%rdx
    50000493:	4c 89 f6             	mov    %r14,%rsi
    50000496:	44 89 ef             	mov    %r13d,%edi
    50000499:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    5000049d:	48 83 c3 01          	add    $0x1,%rbx
    500004a1:	48 39 dd             	cmp    %rbx,%rbp
    500004a4:	75 ea                	jne    50000490 <__libc_csu_init+0x40>
    500004a6:	48 83 c4 08          	add    $0x8,%rsp
    500004aa:	5b                   	pop    %rbx
    500004ab:	5d                   	pop    %rbp
    500004ac:	41 5c                	pop    %r12
    500004ae:	41 5d                	pop    %r13
    500004b0:	41 5e                	pop    %r14
    500004b2:	41 5f                	pop    %r15
    500004b4:	c3                   	retq   
    500004b5:	90                   	nop
    500004b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    500004bd:	00 00 00 

00000000500004c0 <__libc_csu_fini>:
    500004c0:	f3 c3                	repz retq 

Disassembly of section .init:

0000000000400708 <_init>:
  400708:	48 83 ec 08          	sub    $0x8,%rsp
  40070c:	48 8b 05 e5 08 e0 4f 	mov    0x4fe008e5(%rip),%rax        # 50200ff8 <__gmon_start__>
  400713:	48 85 c0             	test   %rax,%rax
  400716:	74 02                	je     40071a <_init+0x12>
  400718:	ff d0                	callq  *%rax
  40071a:	48 83 c4 08          	add    $0x8,%rsp
  40071e:	c3                   	retq   

Disassembly of section .plt:

0000000000400720 <.plt>:
  400720:	ff 35 e2 08 e0 4f    	pushq  0x4fe008e2(%rip)        # 50201008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400726:	ff 25 e4 08 e0 4f    	jmpq   *0x4fe008e4(%rip)        # 50201010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40072c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400730 <putchar@plt>:
  400730:	ff 25 e2 08 e0 4f    	jmpq   *0x4fe008e2(%rip)        # 50201018 <putchar@GLIBC_2.2.5>
  400736:	68 00 00 00 00       	pushq  $0x0
  40073b:	e9 e0 ff ff ff       	jmpq   400720 <.plt>

0000000000400740 <puts@plt>:
  400740:	ff 25 da 08 e0 4f    	jmpq   *0x4fe008da(%rip)        # 50201020 <puts@GLIBC_2.2.5>
  400746:	68 01 00 00 00       	pushq  $0x1
  40074b:	e9 d0 ff ff ff       	jmpq   400720 <.plt>

0000000000400750 <fclose@plt>:
  400750:	ff 25 d2 08 e0 4f    	jmpq   *0x4fe008d2(%rip)        # 50201028 <fclose@GLIBC_2.2.5>
  400756:	68 02 00 00 00       	pushq  $0x2
  40075b:	e9 c0 ff ff ff       	jmpq   400720 <.plt>

0000000000400760 <strlen@plt>:
  400760:	ff 25 ca 08 e0 4f    	jmpq   *0x4fe008ca(%rip)        # 50201030 <strlen@GLIBC_2.2.5>
  400766:	68 03 00 00 00       	pushq  $0x3
  40076b:	e9 b0 ff ff ff       	jmpq   400720 <.plt>

0000000000400770 <__stack_chk_fail@plt>:
  400770:	ff 25 c2 08 e0 4f    	jmpq   *0x4fe008c2(%rip)        # 50201038 <__stack_chk_fail@GLIBC_2.4>
  400776:	68 04 00 00 00       	pushq  $0x4
  40077b:	e9 a0 ff ff ff       	jmpq   400720 <.plt>

0000000000400780 <printf@plt>:
  400780:	ff 25 ba 08 e0 4f    	jmpq   *0x4fe008ba(%rip)        # 50201040 <printf@GLIBC_2.2.5>
  400786:	68 05 00 00 00       	pushq  $0x5
  40078b:	e9 90 ff ff ff       	jmpq   400720 <.plt>

0000000000400790 <fgets@plt>:
  400790:	ff 25 b2 08 e0 4f    	jmpq   *0x4fe008b2(%rip)        # 50201048 <fgets@GLIBC_2.2.5>
  400796:	68 06 00 00 00       	pushq  $0x6
  40079b:	e9 80 ff ff ff       	jmpq   400720 <.plt>

00000000004007a0 <strcmp@plt>:
  4007a0:	ff 25 aa 08 e0 4f    	jmpq   *0x4fe008aa(%rip)        # 50201050 <strcmp@GLIBC_2.2.5>
  4007a6:	68 07 00 00 00       	pushq  $0x7
  4007ab:	e9 70 ff ff ff       	jmpq   400720 <.plt>

00000000004007b0 <feof@plt>:
  4007b0:	ff 25 a2 08 e0 4f    	jmpq   *0x4fe008a2(%rip)        # 50201058 <feof@GLIBC_2.2.5>
  4007b6:	68 08 00 00 00       	pushq  $0x8
  4007bb:	e9 60 ff ff ff       	jmpq   400720 <.plt>

00000000004007c0 <isupper@plt>:
  4007c0:	ff 25 9a 08 e0 4f    	jmpq   *0x4fe0089a(%rip)        # 50201060 <isupper@GLIBC_2.2.5>
  4007c6:	68 09 00 00 00       	pushq  $0x9
  4007cb:	e9 50 ff ff ff       	jmpq   400720 <.plt>

00000000004007d0 <fopen@plt>:
  4007d0:	ff 25 92 08 e0 4f    	jmpq   *0x4fe00892(%rip)        # 50201068 <fopen@GLIBC_2.2.5>
  4007d6:	68 0a 00 00 00       	pushq  $0xa
  4007db:	e9 40 ff ff ff       	jmpq   400720 <.plt>

00000000004007e0 <strtok@plt>:
  4007e0:	ff 25 8a 08 e0 4f    	jmpq   *0x4fe0088a(%rip)        # 50201070 <strtok@GLIBC_2.2.5>
  4007e6:	68 0b 00 00 00       	pushq  $0xb
  4007eb:	e9 30 ff ff ff       	jmpq   400720 <.plt>

00000000004007f0 <atoi@plt>:
  4007f0:	ff 25 82 08 e0 4f    	jmpq   *0x4fe00882(%rip)        # 50201078 <atoi@GLIBC_2.2.5>
  4007f6:	68 0c 00 00 00       	pushq  $0xc
  4007fb:	e9 20 ff ff ff       	jmpq   400720 <.plt>

0000000000400800 <isxdigit@plt>:
  400800:	ff 25 7a 08 e0 4f    	jmpq   *0x4fe0087a(%rip)        # 50201080 <isxdigit@GLIBC_2.2.5>
  400806:	68 0d 00 00 00       	pushq  $0xd
  40080b:	e9 10 ff ff ff       	jmpq   400720 <.plt>

Disassembly of section .fini:

00000000500004c4 <_fini>:
    500004c4:	48 83 ec 08          	sub    $0x8,%rsp
    500004c8:	48 83 c4 08          	add    $0x8,%rsp
    500004cc:	c3                   	retq   
