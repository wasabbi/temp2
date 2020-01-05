
manage_hw_bp:     file format elf64-x86-64


Disassembly of section .text:

000000005ff11000 <_start>:
    5ff11000:	31 ed                	xor    %ebp,%ebp
    5ff11002:	49 89 d1             	mov    %rdx,%r9
    5ff11005:	5e                   	pop    %rsi
    5ff11006:	48 89 e2             	mov    %rsp,%rdx
    5ff11009:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    5ff1100d:	50                   	push   %rax
    5ff1100e:	54                   	push   %rsp
    5ff1100f:	49 c7 c0 20 16 f1 5f 	mov    $0x5ff11620,%r8
    5ff11016:	48 c7 c1 b0 15 f1 5f 	mov    $0x5ff115b0,%rcx
    5ff1101d:	48 c7 c7 82 12 f1 5f 	mov    $0x5ff11282,%rdi
    5ff11024:	ff 15 c6 0f 20 00    	callq  *0x200fc6(%rip)        # 60111ff0 <__libc_start_main@GLIBC_2.2.5>
    5ff1102a:	f4                   	hlt    
    5ff1102b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000005ff11030 <_dl_relocate_static_pie>:
    5ff11030:	f3 c3                	repz retq 
    5ff11032:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    5ff11039:	00 00 00 
    5ff1103c:	0f 1f 40 00          	nopl   0x0(%rax)

000000005ff11040 <deregister_tm_clones>:
    5ff11040:	b8 b7 20 11 60       	mov    $0x601120b7,%eax
    5ff11045:	55                   	push   %rbp
    5ff11046:	48 2d b0 20 11 60    	sub    $0x601120b0,%rax
    5ff1104c:	48 83 f8 0e          	cmp    $0xe,%rax
    5ff11050:	48 89 e5             	mov    %rsp,%rbp
    5ff11053:	76 1b                	jbe    5ff11070 <deregister_tm_clones+0x30>
    5ff11055:	b8 00 00 00 00       	mov    $0x0,%eax
    5ff1105a:	48 85 c0             	test   %rax,%rax
    5ff1105d:	74 11                	je     5ff11070 <deregister_tm_clones+0x30>
    5ff1105f:	5d                   	pop    %rbp
    5ff11060:	bf b0 20 11 60       	mov    $0x601120b0,%edi
    5ff11065:	ff e0                	jmpq   *%rax
    5ff11067:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    5ff1106e:	00 00 
    5ff11070:	5d                   	pop    %rbp
    5ff11071:	c3                   	retq   
    5ff11072:	0f 1f 40 00          	nopl   0x0(%rax)
    5ff11076:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    5ff1107d:	00 00 00 

000000005ff11080 <register_tm_clones>:
    5ff11080:	be b0 20 11 60       	mov    $0x601120b0,%esi
    5ff11085:	55                   	push   %rbp
    5ff11086:	48 81 ee b0 20 11 60 	sub    $0x601120b0,%rsi
    5ff1108d:	48 c1 fe 03          	sar    $0x3,%rsi
    5ff11091:	48 89 e5             	mov    %rsp,%rbp
    5ff11094:	48 89 f0             	mov    %rsi,%rax
    5ff11097:	48 c1 e8 3f          	shr    $0x3f,%rax
    5ff1109b:	48 01 c6             	add    %rax,%rsi
    5ff1109e:	48 d1 fe             	sar    %rsi
    5ff110a1:	74 15                	je     5ff110b8 <register_tm_clones+0x38>
    5ff110a3:	b8 00 00 00 00       	mov    $0x0,%eax
    5ff110a8:	48 85 c0             	test   %rax,%rax
    5ff110ab:	74 0b                	je     5ff110b8 <register_tm_clones+0x38>
    5ff110ad:	5d                   	pop    %rbp
    5ff110ae:	bf b0 20 11 60       	mov    $0x601120b0,%edi
    5ff110b3:	ff e0                	jmpq   *%rax
    5ff110b5:	0f 1f 00             	nopl   (%rax)
    5ff110b8:	5d                   	pop    %rbp
    5ff110b9:	c3                   	retq   
    5ff110ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000005ff110c0 <__do_global_dtors_aux>:
    5ff110c0:	80 3d 01 10 20 00 00 	cmpb   $0x0,0x201001(%rip)        # 601120c8 <completed.7667>
    5ff110c7:	75 11                	jne    5ff110da <__do_global_dtors_aux+0x1a>
    5ff110c9:	55                   	push   %rbp
    5ff110ca:	48 89 e5             	mov    %rsp,%rbp
    5ff110cd:	e8 6e ff ff ff       	callq  5ff11040 <deregister_tm_clones>
    5ff110d2:	5d                   	pop    %rbp
    5ff110d3:	c6 05 ee 0f 20 00 01 	movb   $0x1,0x200fee(%rip)        # 601120c8 <completed.7667>
    5ff110da:	f3 c3                	repz retq 
    5ff110dc:	0f 1f 40 00          	nopl   0x0(%rax)

000000005ff110e0 <frame_dummy>:
    5ff110e0:	bf 08 1e 11 60       	mov    $0x60111e08,%edi
    5ff110e5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
    5ff110e9:	75 05                	jne    5ff110f0 <frame_dummy+0x10>
    5ff110eb:	eb 93                	jmp    5ff11080 <register_tm_clones>
    5ff110ed:	0f 1f 00             	nopl   (%rax)
    5ff110f0:	b8 00 00 00 00       	mov    $0x0,%eax
    5ff110f5:	48 85 c0             	test   %rax,%rax
    5ff110f8:	74 f1                	je     5ff110eb <frame_dummy+0xb>
    5ff110fa:	55                   	push   %rbp
    5ff110fb:	48 89 e5             	mov    %rsp,%rbp
    5ff110fe:	ff d0                	callq  *%rax
    5ff11100:	5d                   	pop    %rbp
    5ff11101:	e9 7a ff ff ff       	jmpq   5ff11080 <register_tm_clones>

000000005ff11106 <getUInt64fromHex>:
    5ff11106:	55                   	push   %rbp
    5ff11107:	48 89 e5             	mov    %rsp,%rbp
    5ff1110a:	48 83 ec 30          	sub    $0x30,%rsp
    5ff1110e:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    5ff11112:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    5ff11119:	00 
    5ff1111a:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    5ff11121:	00 
    5ff11122:	eb 61                	jmp    5ff11185 <getUInt64fromHex+0x7f>
    5ff11124:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    5ff11128:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5ff1112c:	48 01 d0             	add    %rdx,%rax
    5ff1112f:	0f b6 00             	movzbl (%rax),%eax
    5ff11132:	88 45 ef             	mov    %al,-0x11(%rbp)
    5ff11135:	48 c1 65 f0 04       	shlq   $0x4,-0x10(%rbp)
    5ff1113a:	0f be 45 ef          	movsbl -0x11(%rbp),%eax
    5ff1113e:	83 e8 30             	sub    $0x30,%eax
    5ff11141:	83 f8 09             	cmp    $0x9,%eax
    5ff11144:	77 0f                	ja     5ff11155 <getUInt64fromHex+0x4f>
    5ff11146:	0f be 45 ef          	movsbl -0x11(%rbp),%eax
    5ff1114a:	83 e8 30             	sub    $0x30,%eax
    5ff1114d:	48 98                	cltq   
    5ff1114f:	48 01 45 f0          	add    %rax,-0x10(%rbp)
    5ff11153:	eb 2b                	jmp    5ff11180 <getUInt64fromHex+0x7a>
    5ff11155:	0f be 45 ef          	movsbl -0x11(%rbp),%eax
    5ff11159:	89 c7                	mov    %eax,%edi
    5ff1115b:	e8 b0 f7 4e a0       	callq  400910 <isupper@plt>
    5ff11160:	85 c0                	test   %eax,%eax
    5ff11162:	74 0f                	je     5ff11173 <getUInt64fromHex+0x6d>
    5ff11164:	0f be 45 ef          	movsbl -0x11(%rbp),%eax
    5ff11168:	83 e8 37             	sub    $0x37,%eax
    5ff1116b:	48 98                	cltq   
    5ff1116d:	48 01 45 f0          	add    %rax,-0x10(%rbp)
    5ff11171:	eb 0d                	jmp    5ff11180 <getUInt64fromHex+0x7a>
    5ff11173:	0f be 45 ef          	movsbl -0x11(%rbp),%eax
    5ff11177:	83 e8 57             	sub    $0x57,%eax
    5ff1117a:	48 98                	cltq   
    5ff1117c:	48 01 45 f0          	add    %rax,-0x10(%rbp)
    5ff11180:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    5ff11185:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    5ff11189:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5ff1118d:	48 01 d0             	add    %rdx,%rax
    5ff11190:	0f b6 00             	movzbl (%rax),%eax
    5ff11193:	0f b6 c0             	movzbl %al,%eax
    5ff11196:	89 c7                	mov    %eax,%edi
    5ff11198:	e8 c3 f7 4e a0       	callq  400960 <isxdigit@plt>
    5ff1119d:	85 c0                	test   %eax,%eax
    5ff1119f:	75 83                	jne    5ff11124 <getUInt64fromHex+0x1e>
    5ff111a1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5ff111a5:	c9                   	leaveq 
    5ff111a6:	c3                   	retq   

000000005ff111a7 <manage_bp_hypercall>:
    5ff111a7:	55                   	push   %rbp
    5ff111a8:	48 89 e5             	mov    %rsp,%rbp
    5ff111ab:	48 83 ec 30          	sub    $0x30,%rsp
    5ff111af:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5ff111b3:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5ff111b7:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    5ff111bb:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    5ff111bf:	48 b8 64 64 64 64 64 	movabs $0x6464646464,%rax
    5ff111c6:	00 00 00 
    5ff111c9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5ff111cd:	48 83 7d d0 01       	cmpq   $0x1,-0x30(%rbp)
    5ff111d2:	75 56                	jne    5ff1122a <manage_bp_hypercall+0x83>
    5ff111d4:	48 8d 3d 5d 04 00 00 	lea    0x45d(%rip),%rdi        # 5ff11638 <_IO_stdin_used+0x8>
    5ff111db:	e8 a0 f6 4e a0       	callq  400880 <puts@plt>
    5ff111e0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5ff111e4:	48 89 c6             	mov    %rax,%rsi
    5ff111e7:	48 8d 3d 6f 04 00 00 	lea    0x46f(%rip),%rdi        # 5ff1165d <_IO_stdin_used+0x2d>
    5ff111ee:	b8 00 00 00 00       	mov    $0x0,%eax
    5ff111f3:	e8 d8 f6 4e a0       	callq  4008d0 <printf@plt>
    5ff111f8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5ff111fc:	48 89 c6             	mov    %rax,%rsi
    5ff111ff:	48 8d 3d 6b 04 00 00 	lea    0x46b(%rip),%rdi        # 5ff11671 <_IO_stdin_used+0x41>
    5ff11206:	b8 00 00 00 00       	mov    $0x0,%eax
    5ff1120b:	e8 c0 f6 4e a0       	callq  4008d0 <printf@plt>
    5ff11210:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5ff11214:	48 89 c6             	mov    %rax,%rsi
    5ff11217:	48 8d 3d 5e 04 00 00 	lea    0x45e(%rip),%rdi        # 5ff1167c <_IO_stdin_used+0x4c>
    5ff1121e:	b8 00 00 00 00       	mov    $0x0,%eax
    5ff11223:	e8 a8 f6 4e a0       	callq  4008d0 <printf@plt>
    5ff11228:	eb 55                	jmp    5ff1127f <manage_bp_hypercall+0xd8>
    5ff1122a:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    5ff1122f:	75 26                	jne    5ff11257 <manage_bp_hypercall+0xb0>
    5ff11231:	48 8d 3d 58 04 00 00 	lea    0x458(%rip),%rdi        # 5ff11690 <_IO_stdin_used+0x60>
    5ff11238:	e8 43 f6 4e a0       	callq  400880 <puts@plt>
    5ff1123d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5ff11241:	48 89 c6             	mov    %rax,%rsi
    5ff11244:	48 8d 3d 12 04 00 00 	lea    0x412(%rip),%rdi        # 5ff1165d <_IO_stdin_used+0x2d>
    5ff1124b:	b8 00 00 00 00       	mov    $0x0,%eax
    5ff11250:	e8 7b f6 4e a0       	callq  4008d0 <printf@plt>
    5ff11255:	eb 28                	jmp    5ff1127f <manage_bp_hypercall+0xd8>
    5ff11257:	48 83 7d d0 02       	cmpq   $0x2,-0x30(%rbp)
    5ff1125c:	75 0e                	jne    5ff1126c <manage_bp_hypercall+0xc5>
    5ff1125e:	48 8d 3d 50 04 00 00 	lea    0x450(%rip),%rdi        # 5ff116b5 <_IO_stdin_used+0x85>
    5ff11265:	e8 16 f6 4e a0       	callq  400880 <puts@plt>
    5ff1126a:	eb 13                	jmp    5ff1127f <manage_bp_hypercall+0xd8>
    5ff1126c:	48 83 7d d0 03       	cmpq   $0x3,-0x30(%rbp)
    5ff11271:	75 0c                	jne    5ff1127f <manage_bp_hypercall+0xd8>
    5ff11273:	48 8d 3d 50 04 00 00 	lea    0x450(%rip),%rdi        # 5ff116ca <_IO_stdin_used+0x9a>
    5ff1127a:	e8 01 f6 4e a0       	callq  400880 <puts@plt>
    5ff1127f:	90                   	nop
    5ff11280:	c9                   	leaveq 
    5ff11281:	c3                   	retq   

000000005ff11282 <main>:
    5ff11282:	55                   	push   %rbp
    5ff11283:	48 89 e5             	mov    %rsp,%rbp
    5ff11286:	48 81 ec 30 01 00 00 	sub    $0x130,%rsp
    5ff1128d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5ff11294:	00 00 
    5ff11296:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5ff1129a:	31 c0                	xor    %eax,%eax
    5ff1129c:	b9 02 00 00 00       	mov    $0x2,%ecx
    5ff112a1:	ba 00 00 00 00       	mov    $0x0,%edx
    5ff112a6:	be 00 00 00 00       	mov    $0x0,%esi
    5ff112ab:	bf 00 00 00 00       	mov    $0x0,%edi
    5ff112b0:	e8 f2 fe ff ff       	callq  5ff111a7 <manage_bp_hypercall>
    5ff112b5:	48 8d 35 21 04 00 00 	lea    0x421(%rip),%rsi        # 5ff116dd <_IO_stdin_used+0xad>
    5ff112bc:	48 8d 3d 1c 04 00 00 	lea    0x41c(%rip),%rdi        # 5ff116df <_IO_stdin_used+0xaf>
    5ff112c3:	e8 68 f6 4e a0       	callq  400930 <fopen@plt>
    5ff112c8:	48 89 85 d8 fe ff ff 	mov    %rax,-0x128(%rbp)
    5ff112cf:	e9 7a 02 00 00       	jmpq   5ff1154e <main+0x2cc>
    5ff112d4:	48 8b 95 d8 fe ff ff 	mov    -0x128(%rbp),%rdx
    5ff112db:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff112df:	be 64 00 00 00       	mov    $0x64,%esi
    5ff112e4:	48 89 c7             	mov    %rax,%rdi
    5ff112e7:	e8 f4 f5 4e a0       	callq  4008e0 <fgets@plt>
    5ff112ec:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff112f0:	48 89 c7             	mov    %rax,%rdi
    5ff112f3:	e8 a8 f5 4e a0       	callq  4008a0 <strlen@plt>
    5ff112f8:	48 83 e8 01          	sub    $0x1,%rax
    5ff112fc:	c6 44 05 90 00       	movb   $0x0,-0x70(%rbp,%rax,1)
    5ff11301:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff11305:	48 8d 35 dd 03 00 00 	lea    0x3dd(%rip),%rsi        # 5ff116e9 <_IO_stdin_used+0xb9>
    5ff1130c:	48 89 c7             	mov    %rax,%rdi
    5ff1130f:	e8 dc f5 4e a0       	callq  4008f0 <strcmp@plt>
    5ff11314:	85 c0                	test   %eax,%eax
    5ff11316:	0f 85 b3 01 00 00    	jne    5ff114cf <main+0x24d>
    5ff1131c:	48 8b 95 d8 fe ff ff 	mov    -0x128(%rbp),%rdx
    5ff11323:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff11327:	be 64 00 00 00       	mov    $0x64,%esi
    5ff1132c:	48 89 c7             	mov    %rax,%rdi
    5ff1132f:	e8 ac f5 4e a0       	callq  4008e0 <fgets@plt>
    5ff11334:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff11338:	48 89 c7             	mov    %rax,%rdi
    5ff1133b:	e8 60 f5 4e a0       	callq  4008a0 <strlen@plt>
    5ff11340:	48 83 e8 01          	sub    $0x1,%rax
    5ff11344:	c6 44 05 90 00       	movb   $0x0,-0x70(%rbp,%rax,1)
    5ff11349:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff1134d:	48 8d 35 97 03 00 00 	lea    0x397(%rip),%rsi        # 5ff116eb <_IO_stdin_used+0xbb>
    5ff11354:	48 89 c7             	mov    %rax,%rdi
    5ff11357:	e8 e4 f5 4e a0       	callq  400940 <strtok@plt>
    5ff1135c:	48 89 85 e0 fe ff ff 	mov    %rax,-0x120(%rbp)
    5ff11363:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    5ff1136a:	48 89 c7             	mov    %rax,%rdi
    5ff1136d:	e8 94 fd ff ff       	callq  5ff11106 <getUInt64fromHex>
    5ff11372:	48 89 85 e8 fe ff ff 	mov    %rax,-0x118(%rbp)
    5ff11379:	48 8d 35 6b 03 00 00 	lea    0x36b(%rip),%rsi        # 5ff116eb <_IO_stdin_used+0xbb>
    5ff11380:	bf 00 00 00 00       	mov    $0x0,%edi
    5ff11385:	e8 b6 f5 4e a0       	callq  400940 <strtok@plt>
    5ff1138a:	48 89 85 e0 fe ff ff 	mov    %rax,-0x120(%rbp)
    5ff11391:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    5ff11398:	48 89 c7             	mov    %rax,%rdi
    5ff1139b:	b8 00 00 00 00       	mov    $0x0,%eax
    5ff113a0:	e8 ab f5 4e a0       	callq  400950 <atoi@plt>
    5ff113a5:	48 98                	cltq   
    5ff113a7:	48 89 85 f0 fe ff ff 	mov    %rax,-0x110(%rbp)
    5ff113ae:	48 8d 35 36 03 00 00 	lea    0x336(%rip),%rsi        # 5ff116eb <_IO_stdin_used+0xbb>
    5ff113b5:	bf 00 00 00 00       	mov    $0x0,%edi
    5ff113ba:	e8 81 f5 4e a0       	callq  400940 <strtok@plt>
    5ff113bf:	48 89 85 e0 fe ff ff 	mov    %rax,-0x120(%rbp)
    5ff113c6:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    5ff113cd:	48 89 c7             	mov    %rax,%rdi
    5ff113d0:	b8 00 00 00 00       	mov    $0x0,%eax
    5ff113d5:	e8 76 f5 4e a0       	callq  400950 <atoi@plt>
    5ff113da:	48 98                	cltq   
    5ff113dc:	48 89 85 f8 fe ff ff 	mov    %rax,-0x108(%rbp)
    5ff113e3:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
    5ff113ea:	48 89 c6             	mov    %rax,%rsi
    5ff113ed:	b8 00 00 00 00       	mov    $0x0,%eax
    5ff113f2:	ba 10 00 00 00       	mov    $0x10,%edx
    5ff113f7:	48 89 f7             	mov    %rsi,%rdi
    5ff113fa:	48 89 d1             	mov    %rdx,%rcx
    5ff113fd:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    5ff11400:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
    5ff11407:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
    5ff1140e:	48 81 bd 00 ff ff ff 	cmpq   $0x3ff,-0x100(%rbp)
    5ff11415:	ff 03 00 00 
    5ff11419:	77 4d                	ja     5ff11468 <main+0x1e6>
    5ff1141b:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
    5ff11422:	48 c1 e8 06          	shr    $0x6,%rax
    5ff11426:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    5ff1142d:	00 
    5ff1142e:	48 8d 8d 10 ff ff ff 	lea    -0xf0(%rbp),%rcx
    5ff11435:	48 01 ca             	add    %rcx,%rdx
    5ff11438:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
    5ff1143f:	00 
    5ff11440:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
    5ff11447:	48 01 c8             	add    %rcx,%rax
    5ff1144a:	48 8b 00             	mov    (%rax),%rax
    5ff1144d:	48 8b 8d 00 ff ff ff 	mov    -0x100(%rbp),%rcx
    5ff11454:	83 e1 3f             	and    $0x3f,%ecx
    5ff11457:	be 01 00 00 00       	mov    $0x1,%esi
    5ff1145c:	48 d3 e6             	shl    %cl,%rsi
    5ff1145f:	48 89 f1             	mov    %rsi,%rcx
    5ff11462:	48 09 c8             	or     %rcx,%rax
    5ff11465:	48 89 02             	mov    %rax,(%rdx)
    5ff11468:	e8 b3 f4 4e a0       	callq  400920 <pthread_self@plt>
    5ff1146d:	48 89 c1             	mov    %rax,%rcx
    5ff11470:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
    5ff11477:	48 89 c2             	mov    %rax,%rdx
    5ff1147a:	be 80 00 00 00       	mov    $0x80,%esi
    5ff1147f:	48 89 cf             	mov    %rcx,%rdi
    5ff11482:	e8 39 f4 4e a0       	callq  4008c0 <pthread_setaffinity_np@plt>
    5ff11487:	85 c0                	test   %eax,%eax
    5ff11489:	79 20                	jns    5ff114ab <main+0x229>
    5ff1148b:	48 8b 05 2e 0c 20 00 	mov    0x200c2e(%rip),%rax        # 601120c0 <stderr@@GLIBC_2.2.5>
    5ff11492:	48 89 c1             	mov    %rax,%rcx
    5ff11495:	ba 1b 00 00 00       	mov    $0x1b,%edx
    5ff1149a:	be 01 00 00 00       	mov    $0x1,%esi
    5ff1149f:	48 8d 3d 47 02 00 00 	lea    0x247(%rip),%rdi        # 5ff116ed <_IO_stdin_used+0xbd>
    5ff114a6:	e8 c5 f4 4e a0       	callq  400970 <fwrite@plt>
    5ff114ab:	48 8b 95 f8 fe ff ff 	mov    -0x108(%rbp),%rdx
    5ff114b2:	48 8b b5 f0 fe ff ff 	mov    -0x110(%rbp),%rsi
    5ff114b9:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
    5ff114c0:	b9 01 00 00 00       	mov    $0x1,%ecx
    5ff114c5:	48 89 c7             	mov    %rax,%rdi
    5ff114c8:	e8 da fc ff ff       	callq  5ff111a7 <manage_bp_hypercall>
    5ff114cd:	eb 75                	jmp    5ff11544 <main+0x2c2>
    5ff114cf:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff114d3:	48 8d 35 2f 02 00 00 	lea    0x22f(%rip),%rsi        # 5ff11709 <_IO_stdin_used+0xd9>
    5ff114da:	48 89 c7             	mov    %rax,%rdi
    5ff114dd:	e8 0e f4 4e a0       	callq  4008f0 <strcmp@plt>
    5ff114e2:	85 c0                	test   %eax,%eax
    5ff114e4:	75 5e                	jne    5ff11544 <main+0x2c2>
    5ff114e6:	48 8b 95 d8 fe ff ff 	mov    -0x128(%rbp),%rdx
    5ff114ed:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff114f1:	be 64 00 00 00       	mov    $0x64,%esi
    5ff114f6:	48 89 c7             	mov    %rax,%rdi
    5ff114f9:	e8 e2 f3 4e a0       	callq  4008e0 <fgets@plt>
    5ff114fe:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff11502:	48 89 c7             	mov    %rax,%rdi
    5ff11505:	e8 96 f3 4e a0       	callq  4008a0 <strlen@plt>
    5ff1150a:	48 83 e8 01          	sub    $0x1,%rax
    5ff1150e:	c6 44 05 90 00       	movb   $0x0,-0x70(%rbp,%rax,1)
    5ff11513:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff11517:	48 89 c7             	mov    %rax,%rdi
    5ff1151a:	e8 e7 fb ff ff       	callq  5ff11106 <getUInt64fromHex>
    5ff1151f:	48 89 85 08 ff ff ff 	mov    %rax,-0xf8(%rbp)
    5ff11526:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
    5ff1152d:	b9 00 00 00 00       	mov    $0x0,%ecx
    5ff11532:	ba 00 00 00 00       	mov    $0x0,%edx
    5ff11537:	be 00 00 00 00       	mov    $0x0,%esi
    5ff1153c:	48 89 c7             	mov    %rax,%rdi
    5ff1153f:	e8 63 fc ff ff       	callq  5ff111a7 <manage_bp_hypercall>
    5ff11544:	bf 0a 00 00 00       	mov    $0xa,%edi
    5ff11549:	e8 22 f3 4e a0       	callq  400870 <putchar@plt>
    5ff1154e:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
    5ff11555:	48 89 c7             	mov    %rax,%rdi
    5ff11558:	e8 a3 f3 4e a0       	callq  400900 <feof@plt>
    5ff1155d:	85 c0                	test   %eax,%eax
    5ff1155f:	0f 84 6f fd ff ff    	je     5ff112d4 <main+0x52>
    5ff11565:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
    5ff1156c:	48 89 c7             	mov    %rax,%rdi
    5ff1156f:	e8 1c f3 4e a0       	callq  400890 <fclose@plt>
    5ff11574:	b9 03 00 00 00       	mov    $0x3,%ecx
    5ff11579:	ba 00 00 00 00       	mov    $0x0,%edx
    5ff1157e:	be 00 00 00 00       	mov    $0x0,%esi
    5ff11583:	bf 00 00 00 00       	mov    $0x0,%edi
    5ff11588:	e8 1a fc ff ff       	callq  5ff111a7 <manage_bp_hypercall>
    5ff1158d:	90                   	nop
    5ff1158e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5ff11592:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    5ff11599:	00 00 
    5ff1159b:	74 05                	je     5ff115a2 <main+0x320>
    5ff1159d:	e8 0e f3 4e a0       	callq  4008b0 <__stack_chk_fail@plt>
    5ff115a2:	c9                   	leaveq 
    5ff115a3:	c3                   	retq   
    5ff115a4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    5ff115ab:	00 00 00 
    5ff115ae:	66 90                	xchg   %ax,%ax

000000005ff115b0 <__libc_csu_init>:
    5ff115b0:	41 57                	push   %r15
    5ff115b2:	41 56                	push   %r14
    5ff115b4:	49 89 d7             	mov    %rdx,%r15
    5ff115b7:	41 55                	push   %r13
    5ff115b9:	41 54                	push   %r12
    5ff115bb:	4c 8d 25 36 08 20 00 	lea    0x200836(%rip),%r12        # 60111df8 <__frame_dummy_init_array_entry>
    5ff115c2:	55                   	push   %rbp
    5ff115c3:	48 8d 2d 36 08 20 00 	lea    0x200836(%rip),%rbp        # 60111e00 <__init_array_end>
    5ff115ca:	53                   	push   %rbx
    5ff115cb:	41 89 fd             	mov    %edi,%r13d
    5ff115ce:	49 89 f6             	mov    %rsi,%r14
    5ff115d1:	4c 29 e5             	sub    %r12,%rbp
    5ff115d4:	48 83 ec 08          	sub    $0x8,%rsp
    5ff115d8:	48 c1 fd 03          	sar    $0x3,%rbp
    5ff115dc:	e8 67 f2 4e a0       	callq  400848 <_init>
    5ff115e1:	48 85 ed             	test   %rbp,%rbp
    5ff115e4:	74 20                	je     5ff11606 <__libc_csu_init+0x56>
    5ff115e6:	31 db                	xor    %ebx,%ebx
    5ff115e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    5ff115ef:	00 
    5ff115f0:	4c 89 fa             	mov    %r15,%rdx
    5ff115f3:	4c 89 f6             	mov    %r14,%rsi
    5ff115f6:	44 89 ef             	mov    %r13d,%edi
    5ff115f9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    5ff115fd:	48 83 c3 01          	add    $0x1,%rbx
    5ff11601:	48 39 dd             	cmp    %rbx,%rbp
    5ff11604:	75 ea                	jne    5ff115f0 <__libc_csu_init+0x40>
    5ff11606:	48 83 c4 08          	add    $0x8,%rsp
    5ff1160a:	5b                   	pop    %rbx
    5ff1160b:	5d                   	pop    %rbp
    5ff1160c:	41 5c                	pop    %r12
    5ff1160e:	41 5d                	pop    %r13
    5ff11610:	41 5e                	pop    %r14
    5ff11612:	41 5f                	pop    %r15
    5ff11614:	c3                   	retq   
    5ff11615:	90                   	nop
    5ff11616:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    5ff1161d:	00 00 00 

000000005ff11620 <__libc_csu_fini>:
    5ff11620:	f3 c3                	repz retq 

Disassembly of section .init:

0000000000400848 <_init>:
  400848:	48 83 ec 08          	sub    $0x8,%rsp
  40084c:	48 8b 05 a5 17 d1 5f 	mov    0x5fd117a5(%rip),%rax        # 60111ff8 <__gmon_start__>
  400853:	48 85 c0             	test   %rax,%rax
  400856:	74 02                	je     40085a <_init+0x12>
  400858:	ff d0                	callq  *%rax
  40085a:	48 83 c4 08          	add    $0x8,%rsp
  40085e:	c3                   	retq   

Disassembly of section .plt:

0000000000400860 <.plt>:
  400860:	ff 35 a2 17 d1 5f    	pushq  0x5fd117a2(%rip)        # 60112008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400866:	ff 25 a4 17 d1 5f    	jmpq   *0x5fd117a4(%rip)        # 60112010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40086c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400870 <putchar@plt>:
  400870:	ff 25 a2 17 d1 5f    	jmpq   *0x5fd117a2(%rip)        # 60112018 <putchar@GLIBC_2.2.5>
  400876:	68 00 00 00 00       	pushq  $0x0
  40087b:	e9 e0 ff ff ff       	jmpq   400860 <.plt>

0000000000400880 <puts@plt>:
  400880:	ff 25 9a 17 d1 5f    	jmpq   *0x5fd1179a(%rip)        # 60112020 <puts@GLIBC_2.2.5>
  400886:	68 01 00 00 00       	pushq  $0x1
  40088b:	e9 d0 ff ff ff       	jmpq   400860 <.plt>

0000000000400890 <fclose@plt>:
  400890:	ff 25 92 17 d1 5f    	jmpq   *0x5fd11792(%rip)        # 60112028 <fclose@GLIBC_2.2.5>
  400896:	68 02 00 00 00       	pushq  $0x2
  40089b:	e9 c0 ff ff ff       	jmpq   400860 <.plt>

00000000004008a0 <strlen@plt>:
  4008a0:	ff 25 8a 17 d1 5f    	jmpq   *0x5fd1178a(%rip)        # 60112030 <strlen@GLIBC_2.2.5>
  4008a6:	68 03 00 00 00       	pushq  $0x3
  4008ab:	e9 b0 ff ff ff       	jmpq   400860 <.plt>

00000000004008b0 <__stack_chk_fail@plt>:
  4008b0:	ff 25 82 17 d1 5f    	jmpq   *0x5fd11782(%rip)        # 60112038 <__stack_chk_fail@GLIBC_2.4>
  4008b6:	68 04 00 00 00       	pushq  $0x4
  4008bb:	e9 a0 ff ff ff       	jmpq   400860 <.plt>

00000000004008c0 <pthread_setaffinity_np@plt>:
  4008c0:	ff 25 7a 17 d1 5f    	jmpq   *0x5fd1177a(%rip)        # 60112040 <pthread_setaffinity_np@GLIBC_2.3.4>
  4008c6:	68 05 00 00 00       	pushq  $0x5
  4008cb:	e9 90 ff ff ff       	jmpq   400860 <.plt>

00000000004008d0 <printf@plt>:
  4008d0:	ff 25 72 17 d1 5f    	jmpq   *0x5fd11772(%rip)        # 60112048 <printf@GLIBC_2.2.5>
  4008d6:	68 06 00 00 00       	pushq  $0x6
  4008db:	e9 80 ff ff ff       	jmpq   400860 <.plt>

00000000004008e0 <fgets@plt>:
  4008e0:	ff 25 6a 17 d1 5f    	jmpq   *0x5fd1176a(%rip)        # 60112050 <fgets@GLIBC_2.2.5>
  4008e6:	68 07 00 00 00       	pushq  $0x7
  4008eb:	e9 70 ff ff ff       	jmpq   400860 <.plt>

00000000004008f0 <strcmp@plt>:
  4008f0:	ff 25 62 17 d1 5f    	jmpq   *0x5fd11762(%rip)        # 60112058 <strcmp@GLIBC_2.2.5>
  4008f6:	68 08 00 00 00       	pushq  $0x8
  4008fb:	e9 60 ff ff ff       	jmpq   400860 <.plt>

0000000000400900 <feof@plt>:
  400900:	ff 25 5a 17 d1 5f    	jmpq   *0x5fd1175a(%rip)        # 60112060 <feof@GLIBC_2.2.5>
  400906:	68 09 00 00 00       	pushq  $0x9
  40090b:	e9 50 ff ff ff       	jmpq   400860 <.plt>

0000000000400910 <isupper@plt>:
  400910:	ff 25 52 17 d1 5f    	jmpq   *0x5fd11752(%rip)        # 60112068 <isupper@GLIBC_2.2.5>
  400916:	68 0a 00 00 00       	pushq  $0xa
  40091b:	e9 40 ff ff ff       	jmpq   400860 <.plt>

0000000000400920 <pthread_self@plt>:
  400920:	ff 25 4a 17 d1 5f    	jmpq   *0x5fd1174a(%rip)        # 60112070 <pthread_self@GLIBC_2.2.5>
  400926:	68 0b 00 00 00       	pushq  $0xb
  40092b:	e9 30 ff ff ff       	jmpq   400860 <.plt>

0000000000400930 <fopen@plt>:
  400930:	ff 25 42 17 d1 5f    	jmpq   *0x5fd11742(%rip)        # 60112078 <fopen@GLIBC_2.2.5>
  400936:	68 0c 00 00 00       	pushq  $0xc
  40093b:	e9 20 ff ff ff       	jmpq   400860 <.plt>

0000000000400940 <strtok@plt>:
  400940:	ff 25 3a 17 d1 5f    	jmpq   *0x5fd1173a(%rip)        # 60112080 <strtok@GLIBC_2.2.5>
  400946:	68 0d 00 00 00       	pushq  $0xd
  40094b:	e9 10 ff ff ff       	jmpq   400860 <.plt>

0000000000400950 <atoi@plt>:
  400950:	ff 25 32 17 d1 5f    	jmpq   *0x5fd11732(%rip)        # 60112088 <atoi@GLIBC_2.2.5>
  400956:	68 0e 00 00 00       	pushq  $0xe
  40095b:	e9 00 ff ff ff       	jmpq   400860 <.plt>

0000000000400960 <isxdigit@plt>:
  400960:	ff 25 2a 17 d1 5f    	jmpq   *0x5fd1172a(%rip)        # 60112090 <isxdigit@GLIBC_2.2.5>
  400966:	68 0f 00 00 00       	pushq  $0xf
  40096b:	e9 f0 fe ff ff       	jmpq   400860 <.plt>

0000000000400970 <fwrite@plt>:
  400970:	ff 25 22 17 d1 5f    	jmpq   *0x5fd11722(%rip)        # 60112098 <fwrite@GLIBC_2.2.5>
  400976:	68 10 00 00 00       	pushq  $0x10
  40097b:	e9 e0 fe ff ff       	jmpq   400860 <.plt>

Disassembly of section .fini:

000000005ff11624 <_fini>:
    5ff11624:	48 83 ec 08          	sub    $0x8,%rsp
    5ff11628:	48 83 c4 08          	add    $0x8,%rsp
    5ff1162c:	c3                   	retq   
