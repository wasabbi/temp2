
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
    5ff1100f:	49 c7 c0 e0 14 f1 5f 	mov    $0x5ff114e0,%r8
    5ff11016:	48 c7 c1 70 14 f1 5f 	mov    $0x5ff11470,%rcx
    5ff1101d:	48 c7 c7 51 12 f1 5f 	mov    $0x5ff11251,%rdi
    5ff11024:	ff 15 c6 0f 20 00    	callq  *0x200fc6(%rip)        # 60111ff0 <__libc_start_main@GLIBC_2.2.5>
    5ff1102a:	f4                   	hlt    
    5ff1102b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000005ff11030 <_dl_relocate_static_pie>:
    5ff11030:	f3 c3                	repz retq 
    5ff11032:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    5ff11039:	00 00 00 
    5ff1103c:	0f 1f 40 00          	nopl   0x0(%rax)

000000005ff11040 <deregister_tm_clones>:
    5ff11040:	b8 9f 20 11 60       	mov    $0x6011209f,%eax
    5ff11045:	55                   	push   %rbp
    5ff11046:	48 2d 98 20 11 60    	sub    $0x60112098,%rax
    5ff1104c:	48 83 f8 0e          	cmp    $0xe,%rax
    5ff11050:	48 89 e5             	mov    %rsp,%rbp
    5ff11053:	76 1b                	jbe    5ff11070 <deregister_tm_clones+0x30>
    5ff11055:	b8 00 00 00 00       	mov    $0x0,%eax
    5ff1105a:	48 85 c0             	test   %rax,%rax
    5ff1105d:	74 11                	je     5ff11070 <deregister_tm_clones+0x30>
    5ff1105f:	5d                   	pop    %rbp
    5ff11060:	bf 98 20 11 60       	mov    $0x60112098,%edi
    5ff11065:	ff e0                	jmpq   *%rax
    5ff11067:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    5ff1106e:	00 00 
    5ff11070:	5d                   	pop    %rbp
    5ff11071:	c3                   	retq   
    5ff11072:	0f 1f 40 00          	nopl   0x0(%rax)
    5ff11076:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    5ff1107d:	00 00 00 

000000005ff11080 <register_tm_clones>:
    5ff11080:	be 98 20 11 60       	mov    $0x60112098,%esi
    5ff11085:	55                   	push   %rbp
    5ff11086:	48 81 ee 98 20 11 60 	sub    $0x60112098,%rsi
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
    5ff110ae:	bf 98 20 11 60       	mov    $0x60112098,%edi
    5ff110b3:	ff e0                	jmpq   *%rax
    5ff110b5:	0f 1f 00             	nopl   (%rax)
    5ff110b8:	5d                   	pop    %rbp
    5ff110b9:	c3                   	retq   
    5ff110ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000005ff110c0 <__do_global_dtors_aux>:
    5ff110c0:	80 3d d1 0f 20 00 00 	cmpb   $0x0,0x200fd1(%rip)        # 60112098 <__TMC_END__>
    5ff110c7:	75 11                	jne    5ff110da <__do_global_dtors_aux+0x1a>
    5ff110c9:	55                   	push   %rbp
    5ff110ca:	48 89 e5             	mov    %rsp,%rbp
    5ff110cd:	e8 6e ff ff ff       	callq  5ff11040 <deregister_tm_clones>
    5ff110d2:	5d                   	pop    %rbp
    5ff110d3:	c6 05 be 0f 20 00 01 	movb   $0x1,0x200fbe(%rip)        # 60112098 <__TMC_END__>
    5ff110da:	f3 c3                	repz retq 
    5ff110dc:	0f 1f 40 00          	nopl   0x0(%rax)

000000005ff110e0 <frame_dummy>:
    5ff110e0:	bf 18 1e 11 60       	mov    $0x60111e18,%edi
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
    5ff1115b:	e8 60 f6 4e a0       	callq  4007c0 <isupper@plt>
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
    5ff11198:	e8 63 f6 4e a0       	callq  400800 <isxdigit@plt>
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
    5ff111cd:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    5ff111d2:	74 56                	je     5ff1122a <manage_bp_hypercall+0x83>
    5ff111d4:	48 8d 3d 1d 03 00 00 	lea    0x31d(%rip),%rdi        # 5ff114f8 <_IO_stdin_used+0x8>
    5ff111db:	e8 60 f5 4e a0       	callq  400740 <puts@plt>
    5ff111e0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5ff111e4:	48 89 c6             	mov    %rax,%rsi
    5ff111e7:	48 8d 3d 2f 03 00 00 	lea    0x32f(%rip),%rdi        # 5ff1151d <_IO_stdin_used+0x2d>
    5ff111ee:	b8 00 00 00 00       	mov    $0x0,%eax
    5ff111f3:	e8 88 f5 4e a0       	callq  400780 <printf@plt>
    5ff111f8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5ff111fc:	48 89 c6             	mov    %rax,%rsi
    5ff111ff:	48 8d 3d 2b 03 00 00 	lea    0x32b(%rip),%rdi        # 5ff11531 <_IO_stdin_used+0x41>
    5ff11206:	b8 00 00 00 00       	mov    $0x0,%eax
    5ff1120b:	e8 70 f5 4e a0       	callq  400780 <printf@plt>
    5ff11210:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5ff11214:	48 89 c6             	mov    %rax,%rsi
    5ff11217:	48 8d 3d 1e 03 00 00 	lea    0x31e(%rip),%rdi        # 5ff1153c <_IO_stdin_used+0x4c>
    5ff1121e:	b8 00 00 00 00       	mov    $0x0,%eax
    5ff11223:	e8 58 f5 4e a0       	callq  400780 <printf@plt>
    5ff11228:	eb 24                	jmp    5ff1124e <manage_bp_hypercall+0xa7>
    5ff1122a:	48 8d 3d 1f 03 00 00 	lea    0x31f(%rip),%rdi        # 5ff11550 <_IO_stdin_used+0x60>
    5ff11231:	e8 0a f5 4e a0       	callq  400740 <puts@plt>
    5ff11236:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5ff1123a:	48 89 c6             	mov    %rax,%rsi
    5ff1123d:	48 8d 3d d9 02 00 00 	lea    0x2d9(%rip),%rdi        # 5ff1151d <_IO_stdin_used+0x2d>
    5ff11244:	b8 00 00 00 00       	mov    $0x0,%eax
    5ff11249:	e8 32 f5 4e a0       	callq  400780 <printf@plt>
    5ff1124e:	90                   	nop
    5ff1124f:	c9                   	leaveq 
    5ff11250:	c3                   	retq   

000000005ff11251 <main>:
    5ff11251:	55                   	push   %rbp
    5ff11252:	48 89 e5             	mov    %rsp,%rbp
    5ff11255:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
    5ff1125c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5ff11263:	00 00 
    5ff11265:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5ff11269:	31 c0                	xor    %eax,%eax
    5ff1126b:	48 8d 35 03 03 00 00 	lea    0x303(%rip),%rsi        # 5ff11575 <_IO_stdin_used+0x85>
    5ff11272:	48 8d 3d fe 02 00 00 	lea    0x2fe(%rip),%rdi        # 5ff11577 <_IO_stdin_used+0x87>
    5ff11279:	e8 52 f5 4e a0       	callq  4007d0 <fopen@plt>
    5ff1127e:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
    5ff11285:	e9 a6 01 00 00       	jmpq   5ff11430 <main+0x1df>
    5ff1128a:	48 8b 95 60 ff ff ff 	mov    -0xa0(%rbp),%rdx
    5ff11291:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff11295:	be 64 00 00 00       	mov    $0x64,%esi
    5ff1129a:	48 89 c7             	mov    %rax,%rdi
    5ff1129d:	e8 ee f4 4e a0       	callq  400790 <fgets@plt>
    5ff112a2:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff112a6:	48 89 c7             	mov    %rax,%rdi
    5ff112a9:	e8 b2 f4 4e a0       	callq  400760 <strlen@plt>
    5ff112ae:	48 83 e8 01          	sub    $0x1,%rax
    5ff112b2:	c6 44 05 90 00       	movb   $0x0,-0x70(%rbp,%rax,1)
    5ff112b7:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff112bb:	48 8d 35 bf 02 00 00 	lea    0x2bf(%rip),%rsi        # 5ff11581 <_IO_stdin_used+0x91>
    5ff112c2:	48 89 c7             	mov    %rax,%rdi
    5ff112c5:	e8 d6 f4 4e a0       	callq  4007a0 <strcmp@plt>
    5ff112ca:	85 c0                	test   %eax,%eax
    5ff112cc:	0f 85 e5 00 00 00    	jne    5ff113b7 <main+0x166>
    5ff112d2:	48 8b 95 60 ff ff ff 	mov    -0xa0(%rbp),%rdx
    5ff112d9:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff112dd:	be 64 00 00 00       	mov    $0x64,%esi
    5ff112e2:	48 89 c7             	mov    %rax,%rdi
    5ff112e5:	e8 a6 f4 4e a0       	callq  400790 <fgets@plt>
    5ff112ea:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff112ee:	48 89 c7             	mov    %rax,%rdi
    5ff112f1:	e8 6a f4 4e a0       	callq  400760 <strlen@plt>
    5ff112f6:	48 83 e8 01          	sub    $0x1,%rax
    5ff112fa:	c6 44 05 90 00       	movb   $0x0,-0x70(%rbp,%rax,1)
    5ff112ff:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff11303:	48 8d 35 79 02 00 00 	lea    0x279(%rip),%rsi        # 5ff11583 <_IO_stdin_used+0x93>
    5ff1130a:	48 89 c7             	mov    %rax,%rdi
    5ff1130d:	e8 ce f4 4e a0       	callq  4007e0 <strtok@plt>
    5ff11312:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    5ff11319:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    5ff11320:	48 89 c7             	mov    %rax,%rdi
    5ff11323:	e8 de fd ff ff       	callq  5ff11106 <getUInt64fromHex>
    5ff11328:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
    5ff1132f:	48 8d 35 4d 02 00 00 	lea    0x24d(%rip),%rsi        # 5ff11583 <_IO_stdin_used+0x93>
    5ff11336:	bf 00 00 00 00       	mov    $0x0,%edi
    5ff1133b:	e8 a0 f4 4e a0       	callq  4007e0 <strtok@plt>
    5ff11340:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    5ff11347:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    5ff1134e:	48 89 c7             	mov    %rax,%rdi
    5ff11351:	b8 00 00 00 00       	mov    $0x0,%eax
    5ff11356:	e8 95 f4 4e a0       	callq  4007f0 <atoi@plt>
    5ff1135b:	48 98                	cltq   
    5ff1135d:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
    5ff11364:	48 8d 35 18 02 00 00 	lea    0x218(%rip),%rsi        # 5ff11583 <_IO_stdin_used+0x93>
    5ff1136b:	bf 00 00 00 00       	mov    $0x0,%edi
    5ff11370:	e8 6b f4 4e a0       	callq  4007e0 <strtok@plt>
    5ff11375:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
    5ff1137c:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    5ff11383:	48 89 c7             	mov    %rax,%rdi
    5ff11386:	b8 00 00 00 00       	mov    $0x0,%eax
    5ff1138b:	e8 60 f4 4e a0       	callq  4007f0 <atoi@plt>
    5ff11390:	48 98                	cltq   
    5ff11392:	48 89 45 80          	mov    %rax,-0x80(%rbp)
    5ff11396:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
    5ff1139a:	48 8b b5 78 ff ff ff 	mov    -0x88(%rbp),%rsi
    5ff113a1:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
    5ff113a8:	b9 01 00 00 00       	mov    $0x1,%ecx
    5ff113ad:	48 89 c7             	mov    %rax,%rdi
    5ff113b0:	e8 f2 fd ff ff       	callq  5ff111a7 <manage_bp_hypercall>
    5ff113b5:	eb 6f                	jmp    5ff11426 <main+0x1d5>
    5ff113b7:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff113bb:	48 8d 35 c3 01 00 00 	lea    0x1c3(%rip),%rsi        # 5ff11585 <_IO_stdin_used+0x95>
    5ff113c2:	48 89 c7             	mov    %rax,%rdi
    5ff113c5:	e8 d6 f3 4e a0       	callq  4007a0 <strcmp@plt>
    5ff113ca:	85 c0                	test   %eax,%eax
    5ff113cc:	75 58                	jne    5ff11426 <main+0x1d5>
    5ff113ce:	48 8b 95 60 ff ff ff 	mov    -0xa0(%rbp),%rdx
    5ff113d5:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff113d9:	be 64 00 00 00       	mov    $0x64,%esi
    5ff113de:	48 89 c7             	mov    %rax,%rdi
    5ff113e1:	e8 aa f3 4e a0       	callq  400790 <fgets@plt>
    5ff113e6:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff113ea:	48 89 c7             	mov    %rax,%rdi
    5ff113ed:	e8 6e f3 4e a0       	callq  400760 <strlen@plt>
    5ff113f2:	48 83 e8 01          	sub    $0x1,%rax
    5ff113f6:	c6 44 05 90 00       	movb   $0x0,-0x70(%rbp,%rax,1)
    5ff113fb:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    5ff113ff:	48 89 c7             	mov    %rax,%rdi
    5ff11402:	e8 ff fc ff ff       	callq  5ff11106 <getUInt64fromHex>
    5ff11407:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    5ff1140b:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    5ff1140f:	b9 00 00 00 00       	mov    $0x0,%ecx
    5ff11414:	ba 00 00 00 00       	mov    $0x0,%edx
    5ff11419:	be 00 00 00 00       	mov    $0x0,%esi
    5ff1141e:	48 89 c7             	mov    %rax,%rdi
    5ff11421:	e8 81 fd ff ff       	callq  5ff111a7 <manage_bp_hypercall>
    5ff11426:	bf 0a 00 00 00       	mov    $0xa,%edi
    5ff1142b:	e8 00 f3 4e a0       	callq  400730 <putchar@plt>
    5ff11430:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
    5ff11437:	48 89 c7             	mov    %rax,%rdi
    5ff1143a:	e8 71 f3 4e a0       	callq  4007b0 <feof@plt>
    5ff1143f:	85 c0                	test   %eax,%eax
    5ff11441:	0f 84 43 fe ff ff    	je     5ff1128a <main+0x39>
    5ff11447:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
    5ff1144e:	48 89 c7             	mov    %rax,%rdi
    5ff11451:	e8 fa f2 4e a0       	callq  400750 <fclose@plt>
    5ff11456:	90                   	nop
    5ff11457:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5ff1145b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    5ff11462:	00 00 
    5ff11464:	74 05                	je     5ff1146b <main+0x21a>
    5ff11466:	e8 05 f3 4e a0       	callq  400770 <__stack_chk_fail@plt>
    5ff1146b:	c9                   	leaveq 
    5ff1146c:	c3                   	retq   
    5ff1146d:	0f 1f 00             	nopl   (%rax)

000000005ff11470 <__libc_csu_init>:
    5ff11470:	41 57                	push   %r15
    5ff11472:	41 56                	push   %r14
    5ff11474:	49 89 d7             	mov    %rdx,%r15
    5ff11477:	41 55                	push   %r13
    5ff11479:	41 54                	push   %r12
    5ff1147b:	4c 8d 25 86 09 20 00 	lea    0x200986(%rip),%r12        # 60111e08 <__frame_dummy_init_array_entry>
    5ff11482:	55                   	push   %rbp
    5ff11483:	48 8d 2d 86 09 20 00 	lea    0x200986(%rip),%rbp        # 60111e10 <__init_array_end>
    5ff1148a:	53                   	push   %rbx
    5ff1148b:	41 89 fd             	mov    %edi,%r13d
    5ff1148e:	49 89 f6             	mov    %rsi,%r14
    5ff11491:	4c 29 e5             	sub    %r12,%rbp
    5ff11494:	48 83 ec 08          	sub    $0x8,%rsp
    5ff11498:	48 c1 fd 03          	sar    $0x3,%rbp
    5ff1149c:	e8 67 f2 4e a0       	callq  400708 <_init>
    5ff114a1:	48 85 ed             	test   %rbp,%rbp
    5ff114a4:	74 20                	je     5ff114c6 <__libc_csu_init+0x56>
    5ff114a6:	31 db                	xor    %ebx,%ebx
    5ff114a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    5ff114af:	00 
    5ff114b0:	4c 89 fa             	mov    %r15,%rdx
    5ff114b3:	4c 89 f6             	mov    %r14,%rsi
    5ff114b6:	44 89 ef             	mov    %r13d,%edi
    5ff114b9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    5ff114bd:	48 83 c3 01          	add    $0x1,%rbx
    5ff114c1:	48 39 dd             	cmp    %rbx,%rbp
    5ff114c4:	75 ea                	jne    5ff114b0 <__libc_csu_init+0x40>
    5ff114c6:	48 83 c4 08          	add    $0x8,%rsp
    5ff114ca:	5b                   	pop    %rbx
    5ff114cb:	5d                   	pop    %rbp
    5ff114cc:	41 5c                	pop    %r12
    5ff114ce:	41 5d                	pop    %r13
    5ff114d0:	41 5e                	pop    %r14
    5ff114d2:	41 5f                	pop    %r15
    5ff114d4:	c3                   	retq   
    5ff114d5:	90                   	nop
    5ff114d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    5ff114dd:	00 00 00 

000000005ff114e0 <__libc_csu_fini>:
    5ff114e0:	f3 c3                	repz retq 

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

000000005ff114e4 <_fini>:
    5ff114e4:	48 83 ec 08          	sub    $0x8,%rsp
    5ff114e8:	48 83 c4 08          	add    $0x8,%rsp
    5ff114ec:	c3                   	retq   
