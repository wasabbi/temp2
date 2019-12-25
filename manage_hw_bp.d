
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
    5ff1100f:	49 c7 c0 20 15 f1 5f 	mov    $0x5ff11520,%r8
    5ff11016:	48 c7 c1 b0 14 f1 5f 	mov    $0x5ff114b0,%rcx
    5ff1101d:	48 c7 c7 4e 12 f1 5f 	mov    $0x5ff1124e,%rdi
    5ff11024:	ff 15 c6 0f 20 00    	callq  *0x200fc6(%rip)        # 60111ff0 <__libc_start_main@GLIBC_2.2.5>
    5ff1102a:	f4                   	hlt    
    5ff1102b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000005ff11030 <_dl_relocate_static_pie>:
    5ff11030:	f3 c3                	repz retq 
    5ff11032:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    5ff11039:	00 00 00 
    5ff1103c:	0f 1f 40 00          	nopl   0x0(%rax)

000000005ff11040 <deregister_tm_clones>:
    5ff11040:	55                   	push   %rbp
    5ff11041:	b8 98 20 11 60       	mov    $0x60112098,%eax
    5ff11046:	48 3d 98 20 11 60    	cmp    $0x60112098,%rax
    5ff1104c:	48 89 e5             	mov    %rsp,%rbp
    5ff1104f:	74 17                	je     5ff11068 <deregister_tm_clones+0x28>
    5ff11051:	b8 00 00 00 00       	mov    $0x0,%eax
    5ff11056:	48 85 c0             	test   %rax,%rax
    5ff11059:	74 0d                	je     5ff11068 <deregister_tm_clones+0x28>
    5ff1105b:	5d                   	pop    %rbp
    5ff1105c:	bf 98 20 11 60       	mov    $0x60112098,%edi
    5ff11061:	ff e0                	jmpq   *%rax
    5ff11063:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    5ff11068:	5d                   	pop    %rbp
    5ff11069:	c3                   	retq   
    5ff1106a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000005ff11070 <register_tm_clones>:
    5ff11070:	be 98 20 11 60       	mov    $0x60112098,%esi
    5ff11075:	55                   	push   %rbp
    5ff11076:	48 81 ee 98 20 11 60 	sub    $0x60112098,%rsi
    5ff1107d:	48 89 e5             	mov    %rsp,%rbp
    5ff11080:	48 c1 fe 03          	sar    $0x3,%rsi
    5ff11084:	48 89 f0             	mov    %rsi,%rax
    5ff11087:	48 c1 e8 3f          	shr    $0x3f,%rax
    5ff1108b:	48 01 c6             	add    %rax,%rsi
    5ff1108e:	48 d1 fe             	sar    %rsi
    5ff11091:	74 15                	je     5ff110a8 <register_tm_clones+0x38>
    5ff11093:	b8 00 00 00 00       	mov    $0x0,%eax
    5ff11098:	48 85 c0             	test   %rax,%rax
    5ff1109b:	74 0b                	je     5ff110a8 <register_tm_clones+0x38>
    5ff1109d:	5d                   	pop    %rbp
    5ff1109e:	bf 98 20 11 60       	mov    $0x60112098,%edi
    5ff110a3:	ff e0                	jmpq   *%rax
    5ff110a5:	0f 1f 00             	nopl   (%rax)
    5ff110a8:	5d                   	pop    %rbp
    5ff110a9:	c3                   	retq   
    5ff110aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000005ff110b0 <__do_global_dtors_aux>:
    5ff110b0:	80 3d e1 0f 20 00 00 	cmpb   $0x0,0x200fe1(%rip)        # 60112098 <__TMC_END__>
    5ff110b7:	75 17                	jne    5ff110d0 <__do_global_dtors_aux+0x20>
    5ff110b9:	55                   	push   %rbp
    5ff110ba:	48 89 e5             	mov    %rsp,%rbp
    5ff110bd:	e8 7e ff ff ff       	callq  5ff11040 <deregister_tm_clones>
    5ff110c2:	c6 05 cf 0f 20 00 01 	movb   $0x1,0x200fcf(%rip)        # 60112098 <__TMC_END__>
    5ff110c9:	5d                   	pop    %rbp
    5ff110ca:	c3                   	retq   
    5ff110cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    5ff110d0:	f3 c3                	repz retq 
    5ff110d2:	0f 1f 40 00          	nopl   0x0(%rax)
    5ff110d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    5ff110dd:	00 00 00 

000000005ff110e0 <frame_dummy>:
    5ff110e0:	55                   	push   %rbp
    5ff110e1:	48 89 e5             	mov    %rsp,%rbp
    5ff110e4:	5d                   	pop    %rbp
    5ff110e5:	eb 89                	jmp    5ff11070 <register_tm_clones>

000000005ff110e7 <getUInt64fromHex>:
    5ff110e7:	55                   	push   %rbp
    5ff110e8:	48 89 e5             	mov    %rsp,%rbp
    5ff110eb:	48 83 ec 30          	sub    $0x30,%rsp
    5ff110ef:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    5ff110f3:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    5ff110fa:	00 
    5ff110fb:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    5ff11102:	00 
    5ff11103:	eb 61                	jmp    5ff11166 <getUInt64fromHex+0x7f>
    5ff11105:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    5ff11109:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5ff1110d:	48 01 d0             	add    %rdx,%rax
    5ff11110:	0f b6 00             	movzbl (%rax),%eax
    5ff11113:	88 45 ef             	mov    %al,-0x11(%rbp)
    5ff11116:	48 c1 65 f0 04       	shlq   $0x4,-0x10(%rbp)
    5ff1111b:	0f be 45 ef          	movsbl -0x11(%rbp),%eax
    5ff1111f:	83 e8 30             	sub    $0x30,%eax
    5ff11122:	83 f8 09             	cmp    $0x9,%eax
    5ff11125:	77 0f                	ja     5ff11136 <getUInt64fromHex+0x4f>
    5ff11127:	0f be 45 ef          	movsbl -0x11(%rbp),%eax
    5ff1112b:	83 e8 30             	sub    $0x30,%eax
    5ff1112e:	48 98                	cltq   
    5ff11130:	48 01 45 f0          	add    %rax,-0x10(%rbp)
    5ff11134:	eb 2b                	jmp    5ff11161 <getUInt64fromHex+0x7a>
    5ff11136:	0f be 45 ef          	movsbl -0x11(%rbp),%eax
    5ff1113a:	89 c7                	mov    %eax,%edi
    5ff1113c:	e8 7f f6 4e a0       	callq  4007c0 <isupper@plt>
    5ff11141:	85 c0                	test   %eax,%eax
    5ff11143:	74 0f                	je     5ff11154 <getUInt64fromHex+0x6d>
    5ff11145:	0f be 45 ef          	movsbl -0x11(%rbp),%eax
    5ff11149:	83 e8 37             	sub    $0x37,%eax
    5ff1114c:	48 98                	cltq   
    5ff1114e:	48 01 45 f0          	add    %rax,-0x10(%rbp)
    5ff11152:	eb 0d                	jmp    5ff11161 <getUInt64fromHex+0x7a>
    5ff11154:	0f be 45 ef          	movsbl -0x11(%rbp),%eax
    5ff11158:	83 e8 57             	sub    $0x57,%eax
    5ff1115b:	48 98                	cltq   
    5ff1115d:	48 01 45 f0          	add    %rax,-0x10(%rbp)
    5ff11161:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    5ff11166:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    5ff1116a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5ff1116e:	48 01 d0             	add    %rdx,%rax
    5ff11171:	0f b6 00             	movzbl (%rax),%eax
    5ff11174:	0f b6 c0             	movzbl %al,%eax
    5ff11177:	89 c7                	mov    %eax,%edi
    5ff11179:	e8 82 f6 4e a0       	callq  400800 <isxdigit@plt>
    5ff1117e:	85 c0                	test   %eax,%eax
    5ff11180:	75 83                	jne    5ff11105 <getUInt64fromHex+0x1e>
    5ff11182:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5ff11186:	c9                   	leaveq 
    5ff11187:	c3                   	retq   

000000005ff11188 <manage_bp_hypercall>:
    5ff11188:	55                   	push   %rbp
    5ff11189:	48 89 e5             	mov    %rsp,%rbp
    5ff1118c:	48 83 ec 40          	sub    $0x40,%rsp
    5ff11190:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5ff11194:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5ff11198:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    5ff1119c:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    5ff111a0:	4c 89 45 c8          	mov    %r8,-0x38(%rbp)
    5ff111a4:	48 b8 64 64 64 64 64 	movabs $0x6464646464,%rax
    5ff111ab:	00 00 00 
    5ff111ae:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5ff111b2:	48 83 7d c8 00       	cmpq   $0x0,-0x38(%rbp)
    5ff111b7:	74 6e                	je     5ff11227 <manage_bp_hypercall+0x9f>
    5ff111b9:	48 8d 3d 78 03 00 00 	lea    0x378(%rip),%rdi        # 5ff11538 <_IO_stdin_used+0x8>
    5ff111c0:	e8 7b f5 4e a0       	callq  400740 <puts@plt>
    5ff111c5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5ff111c9:	48 89 c6             	mov    %rax,%rsi
    5ff111cc:	48 8d 3d 8a 03 00 00 	lea    0x38a(%rip),%rdi        # 5ff1155d <_IO_stdin_used+0x2d>
    5ff111d3:	b8 00 00 00 00       	mov    $0x0,%eax
    5ff111d8:	e8 a3 f5 4e a0       	callq  400780 <printf@plt>
    5ff111dd:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5ff111e1:	48 89 c6             	mov    %rax,%rsi
    5ff111e4:	48 8d 3d 86 03 00 00 	lea    0x386(%rip),%rdi        # 5ff11571 <_IO_stdin_used+0x41>
    5ff111eb:	b8 00 00 00 00       	mov    $0x0,%eax
    5ff111f0:	e8 8b f5 4e a0       	callq  400780 <printf@plt>
    5ff111f5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5ff111f9:	48 89 c6             	mov    %rax,%rsi
    5ff111fc:	48 8d 3d 7f 03 00 00 	lea    0x37f(%rip),%rdi        # 5ff11582 <_IO_stdin_used+0x52>
    5ff11203:	b8 00 00 00 00       	mov    $0x0,%eax
    5ff11208:	e8 73 f5 4e a0       	callq  400780 <printf@plt>
    5ff1120d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5ff11211:	48 89 c6             	mov    %rax,%rsi
    5ff11214:	48 8d 3d 72 03 00 00 	lea    0x372(%rip),%rdi        # 5ff1158d <_IO_stdin_used+0x5d>
    5ff1121b:	b8 00 00 00 00       	mov    $0x0,%eax
    5ff11220:	e8 5b f5 4e a0       	callq  400780 <printf@plt>
    5ff11225:	eb 24                	jmp    5ff1124b <manage_bp_hypercall+0xc3>
    5ff11227:	48 8d 3d 72 03 00 00 	lea    0x372(%rip),%rdi        # 5ff115a0 <_IO_stdin_used+0x70>
    5ff1122e:	e8 0d f5 4e a0       	callq  400740 <puts@plt>
    5ff11233:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5ff11237:	48 89 c6             	mov    %rax,%rsi
    5ff1123a:	48 8d 3d 1c 03 00 00 	lea    0x31c(%rip),%rdi        # 5ff1155d <_IO_stdin_used+0x2d>
    5ff11241:	b8 00 00 00 00       	mov    $0x0,%eax
    5ff11246:	e8 35 f5 4e a0       	callq  400780 <printf@plt>
    5ff1124b:	90                   	nop
    5ff1124c:	c9                   	leaveq 
    5ff1124d:	c3                   	retq   

000000005ff1124e <main>:
    5ff1124e:	55                   	push   %rbp
    5ff1124f:	48 89 e5             	mov    %rsp,%rbp
    5ff11252:	48 81 ec b0 00 00 00 	sub    $0xb0,%rsp
    5ff11259:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5ff11260:	00 00 
    5ff11262:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5ff11266:	31 c0                	xor    %eax,%eax
    5ff11268:	48 8d 35 56 03 00 00 	lea    0x356(%rip),%rsi        # 5ff115c5 <_IO_stdin_used+0x95>
    5ff1126f:	48 8d 3d 51 03 00 00 	lea    0x351(%rip),%rdi        # 5ff115c7 <_IO_stdin_used+0x97>
    5ff11276:	e8 55 f5 4e a0       	callq  4007d0 <fopen@plt>
    5ff1127b:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
    5ff11282:	e9 e2 01 00 00       	jmpq   5ff11469 <main+0x21b>
    5ff11287:	48 8b 95 58 ff ff ff 	mov    -0xa8(%rbp),%rdx
    5ff1128e:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff11292:	be 64 00 00 00       	mov    $0x64,%esi
    5ff11297:	48 89 c7             	mov    %rax,%rdi
    5ff1129a:	e8 f1 f4 4e a0       	callq  400790 <fgets@plt>
    5ff1129f:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff112a3:	48 89 c7             	mov    %rax,%rdi
    5ff112a6:	e8 b5 f4 4e a0       	callq  400760 <strlen@plt>
    5ff112ab:	48 83 e8 01          	sub    $0x1,%rax
    5ff112af:	c6 44 05 90 00       	movb   $0x0,-0x70(%rbp,%rax,1)
    5ff112b4:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff112b8:	48 8d 35 12 03 00 00 	lea    0x312(%rip),%rsi        # 5ff115d1 <_IO_stdin_used+0xa1>
    5ff112bf:	48 89 c7             	mov    %rax,%rdi
    5ff112c2:	e8 d9 f4 4e a0       	callq  4007a0 <strcmp@plt>
    5ff112c7:	85 c0                	test   %eax,%eax
    5ff112c9:	0f 85 15 01 00 00    	jne    5ff113e4 <main+0x196>
    5ff112cf:	48 8b 95 58 ff ff ff 	mov    -0xa8(%rbp),%rdx
    5ff112d6:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff112da:	be 64 00 00 00       	mov    $0x64,%esi
    5ff112df:	48 89 c7             	mov    %rax,%rdi
    5ff112e2:	e8 a9 f4 4e a0       	callq  400790 <fgets@plt>
    5ff112e7:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff112eb:	48 89 c7             	mov    %rax,%rdi
    5ff112ee:	e8 6d f4 4e a0       	callq  400760 <strlen@plt>
    5ff112f3:	48 83 e8 01          	sub    $0x1,%rax
    5ff112f7:	c6 44 05 90 00       	movb   $0x0,-0x70(%rbp,%rax,1)
    5ff112fc:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff11300:	48 8d 35 cc 02 00 00 	lea    0x2cc(%rip),%rsi        # 5ff115d3 <_IO_stdin_used+0xa3>
    5ff11307:	48 89 c7             	mov    %rax,%rdi
    5ff1130a:	e8 d1 f4 4e a0       	callq  4007e0 <strtok@plt>
    5ff1130f:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    5ff11316:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    5ff1131d:	48 89 c7             	mov    %rax,%rdi
    5ff11320:	e8 c2 fd ff ff       	callq  5ff110e7 <getUInt64fromHex>
    5ff11325:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
    5ff1132c:	48 8d 35 a0 02 00 00 	lea    0x2a0(%rip),%rsi        # 5ff115d3 <_IO_stdin_used+0xa3>
    5ff11333:	bf 00 00 00 00       	mov    $0x0,%edi
    5ff11338:	e8 a3 f4 4e a0       	callq  4007e0 <strtok@plt>
    5ff1133d:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    5ff11344:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    5ff1134b:	48 89 c7             	mov    %rax,%rdi
    5ff1134e:	e8 94 fd ff ff       	callq  5ff110e7 <getUInt64fromHex>
    5ff11353:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
    5ff1135a:	48 8d 35 72 02 00 00 	lea    0x272(%rip),%rsi        # 5ff115d3 <_IO_stdin_used+0xa3>
    5ff11361:	bf 00 00 00 00       	mov    $0x0,%edi
    5ff11366:	e8 75 f4 4e a0       	callq  4007e0 <strtok@plt>
    5ff1136b:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    5ff11372:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    5ff11379:	48 89 c7             	mov    %rax,%rdi
    5ff1137c:	b8 00 00 00 00       	mov    $0x0,%eax
    5ff11381:	e8 6a f4 4e a0       	callq  4007f0 <atoi@plt>
    5ff11386:	48 98                	cltq   
    5ff11388:	48 89 45 80          	mov    %rax,-0x80(%rbp)
    5ff1138c:	48 8d 35 40 02 00 00 	lea    0x240(%rip),%rsi        # 5ff115d3 <_IO_stdin_used+0xa3>
    5ff11393:	bf 00 00 00 00       	mov    $0x0,%edi
    5ff11398:	e8 43 f4 4e a0       	callq  4007e0 <strtok@plt>
    5ff1139d:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    5ff113a4:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    5ff113ab:	48 89 c7             	mov    %rax,%rdi
    5ff113ae:	b8 00 00 00 00       	mov    $0x0,%eax
    5ff113b3:	e8 38 f4 4e a0       	callq  4007f0 <atoi@plt>
    5ff113b8:	48 98                	cltq   
    5ff113ba:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    5ff113be:	48 8b 4d 88          	mov    -0x78(%rbp),%rcx
    5ff113c2:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
    5ff113c6:	48 8b b5 78 ff ff ff 	mov    -0x88(%rbp),%rsi
    5ff113cd:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    5ff113d4:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    5ff113da:	48 89 c7             	mov    %rax,%rdi
    5ff113dd:	e8 a6 fd ff ff       	callq  5ff11188 <manage_bp_hypercall>
    5ff113e2:	eb 7b                	jmp    5ff1145f <main+0x211>
    5ff113e4:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff113e8:	48 8d 35 e6 01 00 00 	lea    0x1e6(%rip),%rsi        # 5ff115d5 <_IO_stdin_used+0xa5>
    5ff113ef:	48 89 c7             	mov    %rax,%rdi
    5ff113f2:	e8 a9 f3 4e a0       	callq  4007a0 <strcmp@plt>
    5ff113f7:	85 c0                	test   %eax,%eax
    5ff113f9:	75 64                	jne    5ff1145f <main+0x211>
    5ff113fb:	48 8b 95 58 ff ff ff 	mov    -0xa8(%rbp),%rdx
    5ff11402:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff11406:	be 64 00 00 00       	mov    $0x64,%esi
    5ff1140b:	48 89 c7             	mov    %rax,%rdi
    5ff1140e:	e8 7d f3 4e a0       	callq  400790 <fgets@plt>
    5ff11413:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff11417:	48 89 c7             	mov    %rax,%rdi
    5ff1141a:	e8 41 f3 4e a0       	callq  400760 <strlen@plt>
    5ff1141f:	48 83 e8 01          	sub    $0x1,%rax
    5ff11423:	c6 44 05 90 00       	movb   $0x0,-0x70(%rbp,%rax,1)
    5ff11428:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff1142c:	48 89 c7             	mov    %rax,%rdi
    5ff1142f:	e8 b3 fc ff ff       	callq  5ff110e7 <getUInt64fromHex>
    5ff11434:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
    5ff1143b:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
    5ff11442:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    5ff11448:	b9 00 00 00 00       	mov    $0x0,%ecx
    5ff1144d:	ba 00 00 00 00       	mov    $0x0,%edx
    5ff11452:	be 00 00 00 00       	mov    $0x0,%esi
    5ff11457:	48 89 c7             	mov    %rax,%rdi
    5ff1145a:	e8 29 fd ff ff       	callq  5ff11188 <manage_bp_hypercall>
    5ff1145f:	bf 0a 00 00 00       	mov    $0xa,%edi
    5ff11464:	e8 c7 f2 4e a0       	callq  400730 <putchar@plt>
    5ff11469:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
    5ff11470:	48 89 c7             	mov    %rax,%rdi
    5ff11473:	e8 38 f3 4e a0       	callq  4007b0 <feof@plt>
    5ff11478:	85 c0                	test   %eax,%eax
    5ff1147a:	0f 84 07 fe ff ff    	je     5ff11287 <main+0x39>
    5ff11480:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
    5ff11487:	48 89 c7             	mov    %rax,%rdi
    5ff1148a:	e8 c1 f2 4e a0       	callq  400750 <fclose@plt>
    5ff1148f:	90                   	nop
    5ff11490:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5ff11494:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    5ff1149b:	00 00 
    5ff1149d:	74 05                	je     5ff114a4 <main+0x256>
    5ff1149f:	e8 cc f2 4e a0       	callq  400770 <__stack_chk_fail@plt>
    5ff114a4:	c9                   	leaveq 
    5ff114a5:	c3                   	retq   
    5ff114a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    5ff114ad:	00 00 00 

000000005ff114b0 <__libc_csu_init>:
    5ff114b0:	41 57                	push   %r15
    5ff114b2:	41 56                	push   %r14
    5ff114b4:	49 89 d7             	mov    %rdx,%r15
    5ff114b7:	41 55                	push   %r13
    5ff114b9:	41 54                	push   %r12
    5ff114bb:	4c 8d 25 4e 09 20 00 	lea    0x20094e(%rip),%r12        # 60111e10 <__frame_dummy_init_array_entry>
    5ff114c2:	55                   	push   %rbp
    5ff114c3:	48 8d 2d 4e 09 20 00 	lea    0x20094e(%rip),%rbp        # 60111e18 <__init_array_end>
    5ff114ca:	53                   	push   %rbx
    5ff114cb:	41 89 fd             	mov    %edi,%r13d
    5ff114ce:	49 89 f6             	mov    %rsi,%r14
    5ff114d1:	4c 29 e5             	sub    %r12,%rbp
    5ff114d4:	48 83 ec 08          	sub    $0x8,%rsp
    5ff114d8:	48 c1 fd 03          	sar    $0x3,%rbp
    5ff114dc:	e8 27 f2 4e a0       	callq  400708 <_init>
    5ff114e1:	48 85 ed             	test   %rbp,%rbp
    5ff114e4:	74 20                	je     5ff11506 <__libc_csu_init+0x56>
    5ff114e6:	31 db                	xor    %ebx,%ebx
    5ff114e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    5ff114ef:	00 
    5ff114f0:	4c 89 fa             	mov    %r15,%rdx
    5ff114f3:	4c 89 f6             	mov    %r14,%rsi
    5ff114f6:	44 89 ef             	mov    %r13d,%edi
    5ff114f9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    5ff114fd:	48 83 c3 01          	add    $0x1,%rbx
    5ff11501:	48 39 dd             	cmp    %rbx,%rbp
    5ff11504:	75 ea                	jne    5ff114f0 <__libc_csu_init+0x40>
    5ff11506:	48 83 c4 08          	add    $0x8,%rsp
    5ff1150a:	5b                   	pop    %rbx
    5ff1150b:	5d                   	pop    %rbp
    5ff1150c:	41 5c                	pop    %r12
    5ff1150e:	41 5d                	pop    %r13
    5ff11510:	41 5e                	pop    %r14
    5ff11512:	41 5f                	pop    %r15
    5ff11514:	c3                   	retq   
    5ff11515:	90                   	nop
    5ff11516:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    5ff1151d:	00 00 00 

000000005ff11520 <__libc_csu_fini>:
    5ff11520:	f3 c3                	repz retq 

Disassembly of section .init:

0000000000400708 <_init>:
  400708:	48 83 ec 08          	sub    $0x8,%rsp
  40070c:	48 8b 05 e5 18 d1 5f 	mov    0x5fd118e5(%rip),%rax        # 60111ff8 <__gmon_start__>
  400713:	48 85 c0             	test   %rax,%rax
  400716:	74 02                	je     40071a <_init+0x12>
  400718:	ff d0                	callq  *%rax
  40071a:	48 83 c4 08          	add    $0x8,%rsp
  40071e:	c3                   	retq   

Disassembly of section .plt:

0000000000400720 <.plt>:
  400720:	ff 35 e2 18 d1 5f    	pushq  0x5fd118e2(%rip)        # 60112008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400726:	ff 25 e4 18 d1 5f    	jmpq   *0x5fd118e4(%rip)        # 60112010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40072c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400730 <putchar@plt>:
  400730:	ff 25 e2 18 d1 5f    	jmpq   *0x5fd118e2(%rip)        # 60112018 <putchar@GLIBC_2.2.5>
  400736:	68 00 00 00 00       	pushq  $0x0
  40073b:	e9 e0 ff ff ff       	jmpq   400720 <.plt>

0000000000400740 <puts@plt>:
  400740:	ff 25 da 18 d1 5f    	jmpq   *0x5fd118da(%rip)        # 60112020 <puts@GLIBC_2.2.5>
  400746:	68 01 00 00 00       	pushq  $0x1
  40074b:	e9 d0 ff ff ff       	jmpq   400720 <.plt>

0000000000400750 <fclose@plt>:
  400750:	ff 25 d2 18 d1 5f    	jmpq   *0x5fd118d2(%rip)        # 60112028 <fclose@GLIBC_2.2.5>
  400756:	68 02 00 00 00       	pushq  $0x2
  40075b:	e9 c0 ff ff ff       	jmpq   400720 <.plt>

0000000000400760 <strlen@plt>:
  400760:	ff 25 ca 18 d1 5f    	jmpq   *0x5fd118ca(%rip)        # 60112030 <strlen@GLIBC_2.2.5>
  400766:	68 03 00 00 00       	pushq  $0x3
  40076b:	e9 b0 ff ff ff       	jmpq   400720 <.plt>

0000000000400770 <__stack_chk_fail@plt>:
  400770:	ff 25 c2 18 d1 5f    	jmpq   *0x5fd118c2(%rip)        # 60112038 <__stack_chk_fail@GLIBC_2.4>
  400776:	68 04 00 00 00       	pushq  $0x4
  40077b:	e9 a0 ff ff ff       	jmpq   400720 <.plt>

0000000000400780 <printf@plt>:
  400780:	ff 25 ba 18 d1 5f    	jmpq   *0x5fd118ba(%rip)        # 60112040 <printf@GLIBC_2.2.5>
  400786:	68 05 00 00 00       	pushq  $0x5
  40078b:	e9 90 ff ff ff       	jmpq   400720 <.plt>

0000000000400790 <fgets@plt>:
  400790:	ff 25 b2 18 d1 5f    	jmpq   *0x5fd118b2(%rip)        # 60112048 <fgets@GLIBC_2.2.5>
  400796:	68 06 00 00 00       	pushq  $0x6
  40079b:	e9 80 ff ff ff       	jmpq   400720 <.plt>

00000000004007a0 <strcmp@plt>:
  4007a0:	ff 25 aa 18 d1 5f    	jmpq   *0x5fd118aa(%rip)        # 60112050 <strcmp@GLIBC_2.2.5>
  4007a6:	68 07 00 00 00       	pushq  $0x7
  4007ab:	e9 70 ff ff ff       	jmpq   400720 <.plt>

00000000004007b0 <feof@plt>:
  4007b0:	ff 25 a2 18 d1 5f    	jmpq   *0x5fd118a2(%rip)        # 60112058 <feof@GLIBC_2.2.5>
  4007b6:	68 08 00 00 00       	pushq  $0x8
  4007bb:	e9 60 ff ff ff       	jmpq   400720 <.plt>

00000000004007c0 <isupper@plt>:
  4007c0:	ff 25 9a 18 d1 5f    	jmpq   *0x5fd1189a(%rip)        # 60112060 <isupper@GLIBC_2.2.5>
  4007c6:	68 09 00 00 00       	pushq  $0x9
  4007cb:	e9 50 ff ff ff       	jmpq   400720 <.plt>

00000000004007d0 <fopen@plt>:
  4007d0:	ff 25 92 18 d1 5f    	jmpq   *0x5fd11892(%rip)        # 60112068 <fopen@GLIBC_2.2.5>
  4007d6:	68 0a 00 00 00       	pushq  $0xa
  4007db:	e9 40 ff ff ff       	jmpq   400720 <.plt>

00000000004007e0 <strtok@plt>:
  4007e0:	ff 25 8a 18 d1 5f    	jmpq   *0x5fd1188a(%rip)        # 60112070 <strtok@GLIBC_2.2.5>
  4007e6:	68 0b 00 00 00       	pushq  $0xb
  4007eb:	e9 30 ff ff ff       	jmpq   400720 <.plt>

00000000004007f0 <atoi@plt>:
  4007f0:	ff 25 82 18 d1 5f    	jmpq   *0x5fd11882(%rip)        # 60112078 <atoi@GLIBC_2.2.5>
  4007f6:	68 0c 00 00 00       	pushq  $0xc
  4007fb:	e9 20 ff ff ff       	jmpq   400720 <.plt>

0000000000400800 <isxdigit@plt>:
  400800:	ff 25 7a 18 d1 5f    	jmpq   *0x5fd1187a(%rip)        # 60112080 <isxdigit@GLIBC_2.2.5>
  400806:	68 0d 00 00 00       	pushq  $0xd
  40080b:	e9 10 ff ff ff       	jmpq   400720 <.plt>

Disassembly of section .fini:

000000005ff11524 <_fini>:
    5ff11524:	48 83 ec 08          	sub    $0x8,%rsp
    5ff11528:	48 83 c4 08          	add    $0x8,%rsp
    5ff1152c:	c3                   	retq   
