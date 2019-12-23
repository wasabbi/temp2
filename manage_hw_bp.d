
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
    5000000f:	49 c7 c0 b0 04 00 50 	mov    $0x500004b0,%r8
    50000016:	48 c7 c1 40 04 00 50 	mov    $0x50000440,%rcx
    5000001d:	48 c7 c7 2d 02 00 50 	mov    $0x5000022d,%rdi
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
    50000194:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    50000197:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    5000019b:	89 4d e0             	mov    %ecx,-0x20(%rbp)
    5000019e:	48 b8 64 64 64 64 64 	movabs $0x6464646464,%rax
    500001a5:	00 00 00 
    500001a8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    500001ac:	83 7d e0 00          	cmpl   $0x0,-0x20(%rbp)
    500001b0:	74 54                	je     50000206 <manage_bp_hypercall+0x7e>
    500001b2:	48 8d 3d 0f 03 00 00 	lea    0x30f(%rip),%rdi        # 500004c8 <_IO_stdin_used+0x8>
    500001b9:	e8 82 05 40 b0       	callq  400740 <puts@plt>
    500001be:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    500001c2:	48 89 c6             	mov    %rax,%rsi
    500001c5:	48 8d 3d 21 03 00 00 	lea    0x321(%rip),%rdi        # 500004ed <_IO_stdin_used+0x2d>
    500001cc:	b8 00 00 00 00       	mov    $0x0,%eax
    500001d1:	e8 aa 05 40 b0       	callq  400780 <printf@plt>
    500001d6:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    500001d9:	89 c6                	mov    %eax,%esi
    500001db:	48 8d 3d 1f 03 00 00 	lea    0x31f(%rip),%rdi        # 50000501 <_IO_stdin_used+0x41>
    500001e2:	b8 00 00 00 00       	mov    $0x0,%eax
    500001e7:	e8 94 05 40 b0       	callq  400780 <printf@plt>
    500001ec:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    500001f0:	48 89 c6             	mov    %rax,%rsi
    500001f3:	48 8d 3d 12 03 00 00 	lea    0x312(%rip),%rdi        # 5000050c <_IO_stdin_used+0x4c>
    500001fa:	b8 00 00 00 00       	mov    $0x0,%eax
    500001ff:	e8 7c 05 40 b0       	callq  400780 <printf@plt>
    50000204:	eb 24                	jmp    5000022a <manage_bp_hypercall+0xa2>
    50000206:	48 8d 3d 13 03 00 00 	lea    0x313(%rip),%rdi        # 50000520 <_IO_stdin_used+0x60>
    5000020d:	e8 2e 05 40 b0       	callq  400740 <puts@plt>
    50000212:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    50000216:	48 89 c6             	mov    %rax,%rsi
    50000219:	48 8d 3d cd 02 00 00 	lea    0x2cd(%rip),%rdi        # 500004ed <_IO_stdin_used+0x2d>
    50000220:	b8 00 00 00 00       	mov    $0x0,%eax
    50000225:	e8 56 05 40 b0       	callq  400780 <printf@plt>
    5000022a:	90                   	nop
    5000022b:	c9                   	leaveq 
    5000022c:	c3                   	retq   

000000005000022d <main>:
    5000022d:	55                   	push   %rbp
    5000022e:	48 89 e5             	mov    %rsp,%rbp
    50000231:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
    50000238:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5000023f:	00 00 
    50000241:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    50000245:	31 c0                	xor    %eax,%eax
    50000247:	48 8d 35 f7 02 00 00 	lea    0x2f7(%rip),%rsi        # 50000545 <_IO_stdin_used+0x85>
    5000024e:	48 8d 3d f2 02 00 00 	lea    0x2f2(%rip),%rdi        # 50000547 <_IO_stdin_used+0x87>
    50000255:	e8 76 05 40 b0       	callq  4007d0 <fopen@plt>
    5000025a:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    50000261:	e9 9b 01 00 00       	jmpq   50000401 <main+0x1d4>
    50000266:	48 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%rdx
    5000026d:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    50000271:	be 64 00 00 00       	mov    $0x64,%esi
    50000276:	48 89 c7             	mov    %rax,%rdi
    50000279:	e8 12 05 40 b0       	callq  400790 <fgets@plt>
    5000027e:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    50000282:	48 89 c7             	mov    %rax,%rdi
    50000285:	e8 d6 04 40 b0       	callq  400760 <strlen@plt>
    5000028a:	48 83 e8 01          	sub    $0x1,%rax
    5000028e:	c6 44 05 90 00       	movb   $0x0,-0x70(%rbp,%rax,1)
    50000293:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    50000297:	48 8d 35 b3 02 00 00 	lea    0x2b3(%rip),%rsi        # 50000551 <_IO_stdin_used+0x91>
    5000029e:	48 89 c7             	mov    %rax,%rdi
    500002a1:	e8 fa 04 40 b0       	callq  4007a0 <strcmp@plt>
    500002a6:	85 c0                	test   %eax,%eax
    500002a8:	0f 85 d4 00 00 00    	jne    50000382 <main+0x155>
    500002ae:	48 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%rdx
    500002b5:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    500002b9:	be 64 00 00 00       	mov    $0x64,%esi
    500002be:	48 89 c7             	mov    %rax,%rdi
    500002c1:	e8 ca 04 40 b0       	callq  400790 <fgets@plt>
    500002c6:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    500002ca:	48 89 c7             	mov    %rax,%rdi
    500002cd:	e8 8e 04 40 b0       	callq  400760 <strlen@plt>
    500002d2:	48 83 e8 01          	sub    $0x1,%rax
    500002d6:	c6 44 05 90 00       	movb   $0x0,-0x70(%rbp,%rax,1)
    500002db:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    500002df:	48 8d 35 6d 02 00 00 	lea    0x26d(%rip),%rsi        # 50000553 <_IO_stdin_used+0x93>
    500002e6:	48 89 c7             	mov    %rax,%rdi
    500002e9:	e8 f2 04 40 b0       	callq  4007e0 <strtok@plt>
    500002ee:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
    500002f5:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    500002fc:	48 89 c7             	mov    %rax,%rdi
    500002ff:	e8 e3 fd ff ff       	callq  500000e7 <getUInt64fromHex>
    50000304:	48 89 45 80          	mov    %rax,-0x80(%rbp)
    50000308:	48 8d 35 44 02 00 00 	lea    0x244(%rip),%rsi        # 50000553 <_IO_stdin_used+0x93>
    5000030f:	bf 00 00 00 00       	mov    $0x0,%edi
    50000314:	e8 c7 04 40 b0       	callq  4007e0 <strtok@plt>
    50000319:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
    50000320:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    50000327:	48 89 c7             	mov    %rax,%rdi
    5000032a:	b8 00 00 00 00       	mov    $0x0,%eax
    5000032f:	e8 bc 04 40 b0       	callq  4007f0 <atoi@plt>
    50000334:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%rbp)
    5000033a:	48 8d 35 12 02 00 00 	lea    0x212(%rip),%rsi        # 50000553 <_IO_stdin_used+0x93>
    50000341:	bf 00 00 00 00       	mov    $0x0,%edi
    50000346:	e8 95 04 40 b0       	callq  4007e0 <strtok@plt>
    5000034b:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
    50000352:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    50000359:	48 89 c7             	mov    %rax,%rdi
    5000035c:	e8 86 fd ff ff       	callq  500000e7 <getUInt64fromHex>
    50000361:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    50000365:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
    50000369:	8b b5 64 ff ff ff    	mov    -0x9c(%rbp),%esi
    5000036f:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    50000373:	b9 01 00 00 00       	mov    $0x1,%ecx
    50000378:	48 89 c7             	mov    %rax,%rdi
    5000037b:	e8 08 fe ff ff       	callq  50000188 <manage_bp_hypercall>
    50000380:	eb 75                	jmp    500003f7 <main+0x1ca>
    50000382:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    50000386:	48 8d 35 c8 01 00 00 	lea    0x1c8(%rip),%rsi        # 50000555 <_IO_stdin_used+0x95>
    5000038d:	48 89 c7             	mov    %rax,%rdi
    50000390:	e8 0b 04 40 b0       	callq  4007a0 <strcmp@plt>
    50000395:	85 c0                	test   %eax,%eax
    50000397:	75 5e                	jne    500003f7 <main+0x1ca>
    50000399:	48 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%rdx
    500003a0:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    500003a4:	be 64 00 00 00       	mov    $0x64,%esi
    500003a9:	48 89 c7             	mov    %rax,%rdi
    500003ac:	e8 df 03 40 b0       	callq  400790 <fgets@plt>
    500003b1:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    500003b5:	48 89 c7             	mov    %rax,%rdi
    500003b8:	e8 a3 03 40 b0       	callq  400760 <strlen@plt>
    500003bd:	48 83 e8 01          	sub    $0x1,%rax
    500003c1:	c6 44 05 90 00       	movb   $0x0,-0x70(%rbp,%rax,1)
    500003c6:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    500003ca:	48 89 c7             	mov    %rax,%rdi
    500003cd:	e8 15 fd ff ff       	callq  500000e7 <getUInt64fromHex>
    500003d2:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
    500003d9:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    500003e0:	b9 00 00 00 00       	mov    $0x0,%ecx
    500003e5:	ba 00 00 00 00       	mov    $0x0,%edx
    500003ea:	be 00 00 00 00       	mov    $0x0,%esi
    500003ef:	48 89 c7             	mov    %rax,%rdi
    500003f2:	e8 91 fd ff ff       	callq  50000188 <manage_bp_hypercall>
    500003f7:	bf 0a 00 00 00       	mov    $0xa,%edi
    500003fc:	e8 2f 03 40 b0       	callq  400730 <putchar@plt>
    50000401:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    50000408:	48 89 c7             	mov    %rax,%rdi
    5000040b:	e8 a0 03 40 b0       	callq  4007b0 <feof@plt>
    50000410:	85 c0                	test   %eax,%eax
    50000412:	0f 84 4e fe ff ff    	je     50000266 <main+0x39>
    50000418:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    5000041f:	48 89 c7             	mov    %rax,%rdi
    50000422:	e8 29 03 40 b0       	callq  400750 <fclose@plt>
    50000427:	90                   	nop
    50000428:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5000042c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    50000433:	00 00 
    50000435:	74 05                	je     5000043c <main+0x20f>
    50000437:	e8 34 03 40 b0       	callq  400770 <__stack_chk_fail@plt>
    5000043c:	c9                   	leaveq 
    5000043d:	c3                   	retq   
    5000043e:	66 90                	xchg   %ax,%ax

0000000050000440 <__libc_csu_init>:
    50000440:	41 57                	push   %r15
    50000442:	41 56                	push   %r14
    50000444:	49 89 d7             	mov    %rdx,%r15
    50000447:	41 55                	push   %r13
    50000449:	41 54                	push   %r12
    5000044b:	4c 8d 25 be 09 20 00 	lea    0x2009be(%rip),%r12        # 50200e10 <__frame_dummy_init_array_entry>
    50000452:	55                   	push   %rbp
    50000453:	48 8d 2d be 09 20 00 	lea    0x2009be(%rip),%rbp        # 50200e18 <__init_array_end>
    5000045a:	53                   	push   %rbx
    5000045b:	41 89 fd             	mov    %edi,%r13d
    5000045e:	49 89 f6             	mov    %rsi,%r14
    50000461:	4c 29 e5             	sub    %r12,%rbp
    50000464:	48 83 ec 08          	sub    $0x8,%rsp
    50000468:	48 c1 fd 03          	sar    $0x3,%rbp
    5000046c:	e8 97 02 40 b0       	callq  400708 <_init>
    50000471:	48 85 ed             	test   %rbp,%rbp
    50000474:	74 20                	je     50000496 <__libc_csu_init+0x56>
    50000476:	31 db                	xor    %ebx,%ebx
    50000478:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    5000047f:	00 
    50000480:	4c 89 fa             	mov    %r15,%rdx
    50000483:	4c 89 f6             	mov    %r14,%rsi
    50000486:	44 89 ef             	mov    %r13d,%edi
    50000489:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    5000048d:	48 83 c3 01          	add    $0x1,%rbx
    50000491:	48 39 dd             	cmp    %rbx,%rbp
    50000494:	75 ea                	jne    50000480 <__libc_csu_init+0x40>
    50000496:	48 83 c4 08          	add    $0x8,%rsp
    5000049a:	5b                   	pop    %rbx
    5000049b:	5d                   	pop    %rbp
    5000049c:	41 5c                	pop    %r12
    5000049e:	41 5d                	pop    %r13
    500004a0:	41 5e                	pop    %r14
    500004a2:	41 5f                	pop    %r15
    500004a4:	c3                   	retq   
    500004a5:	90                   	nop
    500004a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    500004ad:	00 00 00 

00000000500004b0 <__libc_csu_fini>:
    500004b0:	f3 c3                	repz retq 

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

00000000500004b4 <_fini>:
    500004b4:	48 83 ec 08          	sub    $0x8,%rsp
    500004b8:	48 83 c4 08          	add    $0x8,%rsp
    500004bc:	c3                   	retq   
