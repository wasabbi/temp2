
libhook.so:     file format elf64-x86-64


Disassembly of section .init:

0000000000000d08 <_init>:
 d08:	48 83 ec 08          	sub    $0x8,%rsp
 d0c:	48 8b 05 b5 22 20 00 	mov    0x2022b5(%rip),%rax        # 202fc8 <__gmon_start__>
 d13:	48 85 c0             	test   %rax,%rax
 d16:	74 02                	je     d1a <_init+0x12>
 d18:	ff d0                	callq  *%rax
 d1a:	48 83 c4 08          	add    $0x8,%rsp
 d1e:	c3                   	retq   

Disassembly of section .plt:

0000000000000d20 <.plt>:
 d20:	ff 35 e2 22 20 00    	pushq  0x2022e2(%rip)        # 203008 <_GLOBAL_OFFSET_TABLE_+0x8>
 d26:	ff 25 e4 22 20 00    	jmpq   *0x2022e4(%rip)        # 203010 <_GLOBAL_OFFSET_TABLE_+0x10>
 d2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000d30 <putchar@plt>:
 d30:	ff 25 e2 22 20 00    	jmpq   *0x2022e2(%rip)        # 203018 <putchar@GLIBC_2.2.5>
 d36:	68 00 00 00 00       	pushq  $0x0
 d3b:	e9 e0 ff ff ff       	jmpq   d20 <.plt>

0000000000000d40 <puts@plt>:
 d40:	ff 25 da 22 20 00    	jmpq   *0x2022da(%rip)        # 203020 <puts@GLIBC_2.2.5>
 d46:	68 01 00 00 00       	pushq  $0x1
 d4b:	e9 d0 ff ff ff       	jmpq   d20 <.plt>

0000000000000d50 <fclose@plt>:
 d50:	ff 25 d2 22 20 00    	jmpq   *0x2022d2(%rip)        # 203028 <fclose@GLIBC_2.2.5>
 d56:	68 02 00 00 00       	pushq  $0x2
 d5b:	e9 c0 ff ff ff       	jmpq   d20 <.plt>

0000000000000d60 <strlen@plt>:
 d60:	ff 25 ca 22 20 00    	jmpq   *0x2022ca(%rip)        # 203030 <strlen@GLIBC_2.2.5>
 d66:	68 03 00 00 00       	pushq  $0x3
 d6b:	e9 b0 ff ff ff       	jmpq   d20 <.plt>

0000000000000d70 <__stack_chk_fail@plt>:
 d70:	ff 25 c2 22 20 00    	jmpq   *0x2022c2(%rip)        # 203038 <__stack_chk_fail@GLIBC_2.4>
 d76:	68 04 00 00 00       	pushq  $0x4
 d7b:	e9 a0 ff ff ff       	jmpq   d20 <.plt>

0000000000000d80 <mmap@plt>:
 d80:	ff 25 ba 22 20 00    	jmpq   *0x2022ba(%rip)        # 203040 <mmap@GLIBC_2.2.5>
 d86:	68 05 00 00 00       	pushq  $0x5
 d8b:	e9 90 ff ff ff       	jmpq   d20 <.plt>

0000000000000d90 <printf@plt>:
 d90:	ff 25 b2 22 20 00    	jmpq   *0x2022b2(%rip)        # 203048 <printf@GLIBC_2.2.5>
 d96:	68 06 00 00 00       	pushq  $0x6
 d9b:	e9 80 ff ff ff       	jmpq   d20 <.plt>

0000000000000da0 <manage_hw_bp@plt>:
 da0:	ff 25 aa 22 20 00    	jmpq   *0x2022aa(%rip)        # 203050 <manage_hw_bp@@Base+0x201f15>
 da6:	68 07 00 00 00       	pushq  $0x7
 dab:	e9 70 ff ff ff       	jmpq   d20 <.plt>

0000000000000db0 <fgets@plt>:
 db0:	ff 25 a2 22 20 00    	jmpq   *0x2022a2(%rip)        # 203058 <fgets@GLIBC_2.2.5>
 db6:	68 08 00 00 00       	pushq  $0x8
 dbb:	e9 60 ff ff ff       	jmpq   d20 <.plt>

0000000000000dc0 <strcmp@plt>:
 dc0:	ff 25 9a 22 20 00    	jmpq   *0x20229a(%rip)        # 203060 <strcmp@GLIBC_2.2.5>
 dc6:	68 09 00 00 00       	pushq  $0x9
 dcb:	e9 50 ff ff ff       	jmpq   d20 <.plt>

0000000000000dd0 <syscall@plt>:
 dd0:	ff 25 92 22 20 00    	jmpq   *0x202292(%rip)        # 203068 <syscall@GLIBC_2.2.5>
 dd6:	68 0a 00 00 00       	pushq  $0xa
 ddb:	e9 40 ff ff ff       	jmpq   d20 <.plt>

0000000000000de0 <feof@plt>:
 de0:	ff 25 8a 22 20 00    	jmpq   *0x20228a(%rip)        # 203070 <feof@GLIBC_2.2.5>
 de6:	68 0b 00 00 00       	pushq  $0xb
 deb:	e9 30 ff ff ff       	jmpq   d20 <.plt>

0000000000000df0 <hw_bp_insert@plt>:
 df0:	ff 25 82 22 20 00    	jmpq   *0x202282(%rip)        # 203078 <hw_bp_insert@@Base+0x201f69>
 df6:	68 0c 00 00 00       	pushq  $0xc
 dfb:	e9 20 ff ff ff       	jmpq   d20 <.plt>

0000000000000e00 <isupper@plt>:
 e00:	ff 25 7a 22 20 00    	jmpq   *0x20227a(%rip)        # 203080 <isupper@GLIBC_2.2.5>
 e06:	68 0d 00 00 00       	pushq  $0xd
 e0b:	e9 10 ff ff ff       	jmpq   d20 <.plt>

0000000000000e10 <pthread_self@plt>:
 e10:	ff 25 72 22 20 00    	jmpq   *0x202272(%rip)        # 203088 <pthread_self@GLIBC_2.2.5>
 e16:	68 0e 00 00 00       	pushq  $0xe
 e1b:	e9 00 ff ff ff       	jmpq   d20 <.plt>

0000000000000e20 <fopen@plt>:
 e20:	ff 25 6a 22 20 00    	jmpq   *0x20226a(%rip)        # 203090 <fopen@GLIBC_2.2.5>
 e26:	68 0f 00 00 00       	pushq  $0xf
 e2b:	e9 f0 fe ff ff       	jmpq   d20 <.plt>

0000000000000e30 <perror@plt>:
 e30:	ff 25 62 22 20 00    	jmpq   *0x202262(%rip)        # 203098 <perror@GLIBC_2.2.5>
 e36:	68 10 00 00 00       	pushq  $0x10
 e3b:	e9 e0 fe ff ff       	jmpq   d20 <.plt>

0000000000000e40 <strtok@plt>:
 e40:	ff 25 5a 22 20 00    	jmpq   *0x20225a(%rip)        # 2030a0 <strtok@GLIBC_2.2.5>
 e46:	68 11 00 00 00       	pushq  $0x11
 e4b:	e9 d0 fe ff ff       	jmpq   d20 <.plt>

0000000000000e50 <atoi@plt>:
 e50:	ff 25 52 22 20 00    	jmpq   *0x202252(%rip)        # 2030a8 <atoi@GLIBC_2.2.5>
 e56:	68 12 00 00 00       	pushq  $0x12
 e5b:	e9 c0 fe ff ff       	jmpq   d20 <.plt>

0000000000000e60 <exit@plt>:
 e60:	ff 25 4a 22 20 00    	jmpq   *0x20224a(%rip)        # 2030b0 <exit@GLIBC_2.2.5>
 e66:	68 13 00 00 00       	pushq  $0x13
 e6b:	e9 b0 fe ff ff       	jmpq   d20 <.plt>

0000000000000e70 <isxdigit@plt>:
 e70:	ff 25 42 22 20 00    	jmpq   *0x202242(%rip)        # 2030b8 <isxdigit@GLIBC_2.2.5>
 e76:	68 14 00 00 00       	pushq  $0x14
 e7b:	e9 a0 fe ff ff       	jmpq   d20 <.plt>

0000000000000e80 <fwrite@plt>:
 e80:	ff 25 3a 22 20 00    	jmpq   *0x20223a(%rip)        # 2030c0 <fwrite@GLIBC_2.2.5>
 e86:	68 15 00 00 00       	pushq  $0x15
 e8b:	e9 90 fe ff ff       	jmpq   d20 <.plt>

0000000000000e90 <pthread_setaffinity_np@plt>:
 e90:	ff 25 32 22 20 00    	jmpq   *0x202232(%rip)        # 2030c8 <pthread_setaffinity_np>
 e96:	68 16 00 00 00       	pushq  $0x16
 e9b:	e9 80 fe ff ff       	jmpq   d20 <.plt>

0000000000000ea0 <dlsym@plt>:
 ea0:	ff 25 2a 22 20 00    	jmpq   *0x20222a(%rip)        # 2030d0 <dlsym@GLIBC_2.2.5>
 ea6:	68 17 00 00 00       	pushq  $0x17
 eab:	e9 70 fe ff ff       	jmpq   d20 <.plt>

0000000000000eb0 <mmap_init@plt>:
 eb0:	ff 25 22 22 20 00    	jmpq   *0x202222(%rip)        # 2030d8 <mmap_init@@Base+0x202057>
 eb6:	68 18 00 00 00       	pushq  $0x18
 ebb:	e9 60 fe ff ff       	jmpq   d20 <.plt>

0000000000000ec0 <getUInt64fromHex@plt>:
 ec0:	ff 25 1a 22 20 00    	jmpq   *0x20221a(%rip)        # 2030e0 <getUInt64fromHex@@Base+0x202100>
 ec6:	68 19 00 00 00       	pushq  $0x19
 ecb:	e9 50 fe ff ff       	jmpq   d20 <.plt>

Disassembly of section .plt.got:

0000000000000ed0 <__cxa_finalize@plt>:
 ed0:	ff 25 1a 21 20 00    	jmpq   *0x20211a(%rip)        # 202ff0 <__cxa_finalize@GLIBC_2.2.5>
 ed6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000ee0 <deregister_tm_clones>:
     ee0:	48 8d 3d 29 22 20 00 	lea    0x202229(%rip),%rdi        # 203110 <__TMC_END__>
     ee7:	48 8d 05 29 22 20 00 	lea    0x202229(%rip),%rax        # 203117 <__TMC_END__+0x7>
     eee:	55                   	push   %rbp
     eef:	48 29 f8             	sub    %rdi,%rax
     ef2:	48 89 e5             	mov    %rsp,%rbp
     ef5:	48 83 f8 0e          	cmp    $0xe,%rax
     ef9:	76 15                	jbe    f10 <deregister_tm_clones+0x30>
     efb:	48 8b 05 a6 20 20 00 	mov    0x2020a6(%rip),%rax        # 202fa8 <_ITM_deregisterTMCloneTable>
     f02:	48 85 c0             	test   %rax,%rax
     f05:	74 09                	je     f10 <deregister_tm_clones+0x30>
     f07:	5d                   	pop    %rbp
     f08:	ff e0                	jmpq   *%rax
     f0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     f10:	5d                   	pop    %rbp
     f11:	c3                   	retq   
     f12:	0f 1f 40 00          	nopl   0x0(%rax)
     f16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     f1d:	00 00 00 

0000000000000f20 <register_tm_clones>:
     f20:	48 8d 3d e9 21 20 00 	lea    0x2021e9(%rip),%rdi        # 203110 <__TMC_END__>
     f27:	48 8d 35 e2 21 20 00 	lea    0x2021e2(%rip),%rsi        # 203110 <__TMC_END__>
     f2e:	55                   	push   %rbp
     f2f:	48 29 fe             	sub    %rdi,%rsi
     f32:	48 89 e5             	mov    %rsp,%rbp
     f35:	48 c1 fe 03          	sar    $0x3,%rsi
     f39:	48 89 f0             	mov    %rsi,%rax
     f3c:	48 c1 e8 3f          	shr    $0x3f,%rax
     f40:	48 01 c6             	add    %rax,%rsi
     f43:	48 d1 fe             	sar    %rsi
     f46:	74 18                	je     f60 <register_tm_clones+0x40>
     f48:	48 8b 05 99 20 20 00 	mov    0x202099(%rip),%rax        # 202fe8 <_ITM_registerTMCloneTable>
     f4f:	48 85 c0             	test   %rax,%rax
     f52:	74 0c                	je     f60 <register_tm_clones+0x40>
     f54:	5d                   	pop    %rbp
     f55:	ff e0                	jmpq   *%rax
     f57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     f5e:	00 00 
     f60:	5d                   	pop    %rbp
     f61:	c3                   	retq   
     f62:	0f 1f 40 00          	nopl   0x0(%rax)
     f66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     f6d:	00 00 00 

0000000000000f70 <__do_global_dtors_aux>:
     f70:	80 3d 99 21 20 00 00 	cmpb   $0x0,0x202199(%rip)        # 203110 <__TMC_END__>
     f77:	75 27                	jne    fa0 <__do_global_dtors_aux+0x30>
     f79:	48 83 3d 6f 20 20 00 	cmpq   $0x0,0x20206f(%rip)        # 202ff0 <__cxa_finalize@GLIBC_2.2.5>
     f80:	00 
     f81:	55                   	push   %rbp
     f82:	48 89 e5             	mov    %rsp,%rbp
     f85:	74 0c                	je     f93 <__do_global_dtors_aux+0x23>
     f87:	48 8b 3d 5a 21 20 00 	mov    0x20215a(%rip),%rdi        # 2030e8 <__dso_handle>
     f8e:	e8 3d ff ff ff       	callq  ed0 <__cxa_finalize@plt>
     f93:	e8 48 ff ff ff       	callq  ee0 <deregister_tm_clones>
     f98:	5d                   	pop    %rbp
     f99:	c6 05 70 21 20 00 01 	movb   $0x1,0x202170(%rip)        # 203110 <__TMC_END__>
     fa0:	f3 c3                	repz retq 
     fa2:	0f 1f 40 00          	nopl   0x0(%rax)
     fa6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     fad:	00 00 00 

0000000000000fb0 <frame_dummy>:
     fb0:	48 8d 3d 11 1e 20 00 	lea    0x201e11(%rip),%rdi        # 202dc8 <__JCR_END__>
     fb7:	48 83 3f 00          	cmpq   $0x0,(%rdi)
     fbb:	75 0b                	jne    fc8 <frame_dummy+0x18>
     fbd:	e9 5e ff ff ff       	jmpq   f20 <register_tm_clones>
     fc2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     fc8:	48 8b 05 09 20 20 00 	mov    0x202009(%rip),%rax        # 202fd8 <_Jv_RegisterClasses>
     fcf:	48 85 c0             	test   %rax,%rax
     fd2:	74 e9                	je     fbd <frame_dummy+0xd>
     fd4:	55                   	push   %rbp
     fd5:	48 89 e5             	mov    %rsp,%rbp
     fd8:	ff d0                	callq  *%rax
     fda:	5d                   	pop    %rbp
     fdb:	e9 40 ff ff ff       	jmpq   f20 <register_tm_clones>

0000000000000fe0 <getUInt64fromHex>:
     fe0:	55                   	push   %rbp
     fe1:	48 89 e5             	mov    %rsp,%rbp
     fe4:	48 83 ec 30          	sub    $0x30,%rsp
     fe8:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     fec:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
     ff3:	00 
     ff4:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
     ffb:	00 
     ffc:	eb 61                	jmp    105f <getUInt64fromHex+0x7f>
     ffe:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    1002:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1006:	48 01 d0             	add    %rdx,%rax
    1009:	0f b6 00             	movzbl (%rax),%eax
    100c:	88 45 ef             	mov    %al,-0x11(%rbp)
    100f:	48 c1 65 f0 04       	shlq   $0x4,-0x10(%rbp)
    1014:	0f be 45 ef          	movsbl -0x11(%rbp),%eax
    1018:	83 e8 30             	sub    $0x30,%eax
    101b:	83 f8 09             	cmp    $0x9,%eax
    101e:	77 0f                	ja     102f <getUInt64fromHex+0x4f>
    1020:	0f be 45 ef          	movsbl -0x11(%rbp),%eax
    1024:	83 e8 30             	sub    $0x30,%eax
    1027:	48 98                	cltq   
    1029:	48 01 45 f0          	add    %rax,-0x10(%rbp)
    102d:	eb 2b                	jmp    105a <getUInt64fromHex+0x7a>
    102f:	0f be 45 ef          	movsbl -0x11(%rbp),%eax
    1033:	89 c7                	mov    %eax,%edi
    1035:	e8 c6 fd ff ff       	callq  e00 <isupper@plt>
    103a:	85 c0                	test   %eax,%eax
    103c:	74 0f                	je     104d <getUInt64fromHex+0x6d>
    103e:	0f be 45 ef          	movsbl -0x11(%rbp),%eax
    1042:	83 e8 37             	sub    $0x37,%eax
    1045:	48 98                	cltq   
    1047:	48 01 45 f0          	add    %rax,-0x10(%rbp)
    104b:	eb 0d                	jmp    105a <getUInt64fromHex+0x7a>
    104d:	0f be 45 ef          	movsbl -0x11(%rbp),%eax
    1051:	83 e8 57             	sub    $0x57,%eax
    1054:	48 98                	cltq   
    1056:	48 01 45 f0          	add    %rax,-0x10(%rbp)
    105a:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    105f:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    1063:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1067:	48 01 d0             	add    %rdx,%rax
    106a:	0f b6 00             	movzbl (%rax),%eax
    106d:	0f b6 c0             	movzbl %al,%eax
    1070:	89 c7                	mov    %eax,%edi
    1072:	e8 f9 fd ff ff       	callq  e70 <isxdigit@plt>
    1077:	85 c0                	test   %eax,%eax
    1079:	75 83                	jne    ffe <getUInt64fromHex+0x1e>
    107b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    107f:	c9                   	leaveq 
    1080:	c3                   	retq   

0000000000001081 <mmap_init>:
    1081:	55                   	push   %rbp
    1082:	48 89 e5             	mov    %rsp,%rbp
    1085:	48 83 ec 10          	sub    $0x10,%rsp
    1089:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    108f:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
    1095:	b9 22 00 00 00       	mov    $0x22,%ecx
    109a:	ba 07 00 00 00       	mov    $0x7,%edx
    109f:	be 0c 00 00 00       	mov    $0xc,%esi
    10a4:	bf 00 10 f1 5f       	mov    $0x5ff11000,%edi
    10a9:	e8 d2 fc ff ff       	callq  d80 <mmap@plt>
    10ae:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    10b2:	48 83 7d f8 ff       	cmpq   $0xffffffffffffffff,-0x8(%rbp)
    10b7:	75 16                	jne    10cf <mmap_init+0x4e>
    10b9:	48 8d 3d a8 0a 00 00 	lea    0xaa8(%rip),%rdi        # 1b68 <_fini+0x10>
    10c0:	e8 6b fd ff ff       	callq  e30 <perror@plt>
    10c5:	bf ff ff ff ff       	mov    $0xffffffff,%edi
    10ca:	e8 91 fd ff ff       	callq  e60 <exit@plt>
    10cf:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    10d3:	48 8b 05 f6 1e 20 00 	mov    0x201ef6(%rip),%rax        # 202fd0 <sc@@Base-0x158>
    10da:	48 89 10             	mov    %rdx,(%rax)
    10dd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    10e1:	48 89 c6             	mov    %rax,%rsi
    10e4:	48 8d 3d 82 0a 00 00 	lea    0xa82(%rip),%rdi        # 1b6d <_fini+0x15>
    10eb:	b8 00 00 00 00       	mov    $0x0,%eax
    10f0:	e8 9b fc ff ff       	callq  d90 <printf@plt>
    10f5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    10f9:	48 8b 15 b0 1e 20 00 	mov    0x201eb0(%rip),%rdx        # 202fb0 <manage_hw_bp_code@@Base-0x150>
    1100:	48 8b 0a             	mov    (%rdx),%rcx
    1103:	48 89 08             	mov    %rcx,(%rax)
    1106:	8b 52 08             	mov    0x8(%rdx),%edx
    1109:	89 50 08             	mov    %edx,0x8(%rax)
    110c:	90                   	nop
    110d:	c9                   	leaveq 
    110e:	c3                   	retq   

000000000000110f <hw_bp_insert>:
    110f:	55                   	push   %rbp
    1110:	48 89 e5             	mov    %rsp,%rbp
    1113:	48 83 ec 20          	sub    $0x20,%rsp
    1117:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    111b:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    111f:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    1123:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
    1127:	48 8b 05 a2 1e 20 00 	mov    0x201ea2(%rip),%rax        # 202fd0 <sc@@Base-0x158>
    112e:	48 8b 10             	mov    (%rax),%rdx
    1131:	b8 00 00 00 00       	mov    $0x0,%eax
    1136:	ff d2                	callq  *%rdx
    1138:	90                   	nop
    1139:	c9                   	leaveq 
    113a:	c3                   	retq   

000000000000113b <manage_hw_bp>:
    113b:	55                   	push   %rbp
    113c:	48 89 e5             	mov    %rsp,%rbp
    113f:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
    1146:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    114d:	00 00 
    114f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1153:	31 c0                	xor    %eax,%eax
    1155:	b9 02 00 00 00       	mov    $0x2,%ecx
    115a:	ba 00 00 00 00       	mov    $0x0,%edx
    115f:	be 00 00 00 00       	mov    $0x0,%esi
    1164:	bf 00 00 00 00       	mov    $0x0,%edi
    1169:	e8 82 fc ff ff       	callq  df0 <hw_bp_insert@plt>
    116e:	48 8d 35 07 0a 00 00 	lea    0xa07(%rip),%rsi        # 1b7c <_fini+0x24>
    1175:	48 8d 3d 02 0a 00 00 	lea    0xa02(%rip),%rdi        # 1b7e <_fini+0x26>
    117c:	e8 9f fc ff ff       	callq  e20 <fopen@plt>
    1181:	48 89 85 e0 fe ff ff 	mov    %rax,-0x120(%rbp)
    1188:	e9 06 02 00 00       	jmpq   1393 <manage_hw_bp+0x258>
    118d:	48 8b 95 e0 fe ff ff 	mov    -0x120(%rbp),%rdx
    1194:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    1198:	be 64 00 00 00       	mov    $0x64,%esi
    119d:	48 89 c7             	mov    %rax,%rdi
    11a0:	e8 0b fc ff ff       	callq  db0 <fgets@plt>
    11a5:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    11a9:	48 89 c7             	mov    %rax,%rdi
    11ac:	e8 af fb ff ff       	callq  d60 <strlen@plt>
    11b1:	48 83 e8 01          	sub    $0x1,%rax
    11b5:	c6 44 05 90 00       	movb   $0x0,-0x70(%rbp,%rax,1)
    11ba:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    11be:	48 8d 35 c3 09 00 00 	lea    0x9c3(%rip),%rsi        # 1b88 <_fini+0x30>
    11c5:	48 89 c7             	mov    %rax,%rdi
    11c8:	e8 f3 fb ff ff       	callq  dc0 <strcmp@plt>
    11cd:	85 c0                	test   %eax,%eax
    11cf:	0f 85 b4 01 00 00    	jne    1389 <manage_hw_bp+0x24e>
    11d5:	48 8b 95 e0 fe ff ff 	mov    -0x120(%rbp),%rdx
    11dc:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    11e0:	be 64 00 00 00       	mov    $0x64,%esi
    11e5:	48 89 c7             	mov    %rax,%rdi
    11e8:	e8 c3 fb ff ff       	callq  db0 <fgets@plt>
    11ed:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    11f1:	48 89 c7             	mov    %rax,%rdi
    11f4:	e8 67 fb ff ff       	callq  d60 <strlen@plt>
    11f9:	48 83 e8 01          	sub    $0x1,%rax
    11fd:	c6 44 05 90 00       	movb   $0x0,-0x70(%rbp,%rax,1)
    1202:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    1206:	48 8d 35 7d 09 00 00 	lea    0x97d(%rip),%rsi        # 1b8a <_fini+0x32>
    120d:	48 89 c7             	mov    %rax,%rdi
    1210:	e8 2b fc ff ff       	callq  e40 <strtok@plt>
    1215:	48 89 85 e8 fe ff ff 	mov    %rax,-0x118(%rbp)
    121c:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
    1223:	48 89 c7             	mov    %rax,%rdi
    1226:	e8 95 fc ff ff       	callq  ec0 <getUInt64fromHex@plt>
    122b:	48 89 85 f0 fe ff ff 	mov    %rax,-0x110(%rbp)
    1232:	48 8d 35 51 09 00 00 	lea    0x951(%rip),%rsi        # 1b8a <_fini+0x32>
    1239:	bf 00 00 00 00       	mov    $0x0,%edi
    123e:	e8 fd fb ff ff       	callq  e40 <strtok@plt>
    1243:	48 89 85 e8 fe ff ff 	mov    %rax,-0x118(%rbp)
    124a:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
    1251:	48 89 c7             	mov    %rax,%rdi
    1254:	b8 00 00 00 00       	mov    $0x0,%eax
    1259:	e8 f2 fb ff ff       	callq  e50 <atoi@plt>
    125e:	48 98                	cltq   
    1260:	48 89 85 f8 fe ff ff 	mov    %rax,-0x108(%rbp)
    1267:	48 8d 35 1c 09 00 00 	lea    0x91c(%rip),%rsi        # 1b8a <_fini+0x32>
    126e:	bf 00 00 00 00       	mov    $0x0,%edi
    1273:	e8 c8 fb ff ff       	callq  e40 <strtok@plt>
    1278:	48 89 85 e8 fe ff ff 	mov    %rax,-0x118(%rbp)
    127f:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
    1286:	48 89 c7             	mov    %rax,%rdi
    1289:	b8 00 00 00 00       	mov    $0x0,%eax
    128e:	e8 bd fb ff ff       	callq  e50 <atoi@plt>
    1293:	48 98                	cltq   
    1295:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
    129c:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
    12a3:	48 89 c6             	mov    %rax,%rsi
    12a6:	b8 00 00 00 00       	mov    $0x0,%eax
    12ab:	ba 10 00 00 00       	mov    $0x10,%edx
    12b0:	48 89 f7             	mov    %rsi,%rdi
    12b3:	48 89 d1             	mov    %rdx,%rcx
    12b6:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    12b9:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
    12c0:	48 89 85 08 ff ff ff 	mov    %rax,-0xf8(%rbp)
    12c7:	48 81 bd 08 ff ff ff 	cmpq   $0x3ff,-0xf8(%rbp)
    12ce:	ff 03 00 00 
    12d2:	77 4d                	ja     1321 <manage_hw_bp+0x1e6>
    12d4:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
    12db:	48 c1 e8 06          	shr    $0x6,%rax
    12df:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    12e6:	00 
    12e7:	48 8d 8d 10 ff ff ff 	lea    -0xf0(%rbp),%rcx
    12ee:	48 01 ca             	add    %rcx,%rdx
    12f1:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
    12f8:	00 
    12f9:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
    1300:	48 01 c8             	add    %rcx,%rax
    1303:	48 8b 00             	mov    (%rax),%rax
    1306:	48 8b 8d 08 ff ff ff 	mov    -0xf8(%rbp),%rcx
    130d:	83 e1 3f             	and    $0x3f,%ecx
    1310:	be 01 00 00 00       	mov    $0x1,%esi
    1315:	48 d3 e6             	shl    %cl,%rsi
    1318:	48 89 f1             	mov    %rsi,%rcx
    131b:	48 09 c8             	or     %rcx,%rax
    131e:	48 89 02             	mov    %rax,(%rdx)
    1321:	e8 ea fa ff ff       	callq  e10 <pthread_self@plt>
    1326:	48 89 c1             	mov    %rax,%rcx
    1329:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
    1330:	48 89 c2             	mov    %rax,%rdx
    1333:	be 80 00 00 00       	mov    $0x80,%esi
    1338:	48 89 cf             	mov    %rcx,%rdi
    133b:	e8 50 fb ff ff       	callq  e90 <pthread_setaffinity_np@plt>
    1340:	85 c0                	test   %eax,%eax
    1342:	79 23                	jns    1367 <manage_hw_bp+0x22c>
    1344:	48 8b 05 ad 1c 20 00 	mov    0x201cad(%rip),%rax        # 202ff8 <stderr@GLIBC_2.2.5>
    134b:	48 8b 00             	mov    (%rax),%rax
    134e:	48 89 c1             	mov    %rax,%rcx
    1351:	ba 1b 00 00 00       	mov    $0x1b,%edx
    1356:	be 01 00 00 00       	mov    $0x1,%esi
    135b:	48 8d 3d 2a 08 00 00 	lea    0x82a(%rip),%rdi        # 1b8c <_fini+0x34>
    1362:	e8 19 fb ff ff       	callq  e80 <fwrite@plt>
    1367:	48 8b 95 00 ff ff ff 	mov    -0x100(%rbp),%rdx
    136e:	48 8b b5 f8 fe ff ff 	mov    -0x108(%rbp),%rsi
    1375:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
    137c:	b9 01 00 00 00       	mov    $0x1,%ecx
    1381:	48 89 c7             	mov    %rax,%rdi
    1384:	e8 67 fa ff ff       	callq  df0 <hw_bp_insert@plt>
    1389:	bf 0a 00 00 00       	mov    $0xa,%edi
    138e:	e8 9d f9 ff ff       	callq  d30 <putchar@plt>
    1393:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    139a:	48 89 c7             	mov    %rax,%rdi
    139d:	e8 3e fa ff ff       	callq  de0 <feof@plt>
    13a2:	85 c0                	test   %eax,%eax
    13a4:	0f 84 e3 fd ff ff    	je     118d <manage_hw_bp+0x52>
    13aa:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
    13b1:	48 89 c7             	mov    %rax,%rdi
    13b4:	e8 97 f9 ff ff       	callq  d50 <fclose@plt>
    13b9:	b9 03 00 00 00       	mov    $0x3,%ecx
    13be:	ba 00 00 00 00       	mov    $0x0,%edx
    13c3:	be 00 00 00 00       	mov    $0x0,%esi
    13c8:	bf 00 00 00 00       	mov    $0x0,%edi
    13cd:	e8 1e fa ff ff       	callq  df0 <hw_bp_insert@plt>
    13d2:	90                   	nop
    13d3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    13d7:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    13de:	00 00 
    13e0:	74 05                	je     13e7 <manage_hw_bp+0x2ac>
    13e2:	e8 89 f9 ff ff       	callq  d70 <__stack_chk_fail@plt>
    13e7:	c9                   	leaveq 
    13e8:	c3                   	retq   

00000000000013e9 <transition_func>:
    13e9:	55                   	push   %rbp
    13ea:	48 89 e5             	mov    %rsp,%rbp
    13ed:	48 83 ec 30          	sub    $0x30,%rsp
    13f1:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    13f5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    13f9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    13fd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1401:	48 8b 00             	mov    (%rax),%rax
    1404:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1408:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    140c:	48 8b 40 08          	mov    0x8(%rax),%rax
    1410:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1414:	bf ba 00 00 00       	mov    $0xba,%edi
    1419:	b8 00 00 00 00       	mov    $0x0,%eax
    141e:	e8 ad f9 ff ff       	callq  dd0 <syscall@plt>
    1423:	89 c6                	mov    %eax,%esi
    1425:	48 8d 3d 7c 07 00 00 	lea    0x77c(%rip),%rdi        # 1ba8 <_fini+0x50>
    142c:	b8 00 00 00 00       	mov    $0x0,%eax
    1431:	e8 5a f9 ff ff       	callq  d90 <printf@plt>
    1436:	e8 d5 f9 ff ff       	callq  e10 <pthread_self@plt>
    143b:	89 c6                	mov    %eax,%esi
    143d:	48 8d 3d 84 07 00 00 	lea    0x784(%rip),%rdi        # 1bc8 <_fini+0x70>
    1444:	b8 00 00 00 00       	mov    $0x0,%eax
    1449:	e8 42 f9 ff ff       	callq  d90 <printf@plt>
    144e:	48 8b 05 63 1b 20 00 	mov    0x201b63(%rip),%rax        # 202fb8 <thread1@@Base-0x138>
    1455:	48 8b 00             	mov    (%rax),%rax
    1458:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
    145c:	75 38                	jne    1496 <transition_func+0xad>
    145e:	b8 00 00 00 00       	mov    $0x0,%eax
    1463:	e8 48 fa ff ff       	callq  eb0 <mmap_init@plt>
    1468:	48 8d 3d 81 07 00 00 	lea    0x781(%rip),%rdi        # 1bf0 <_fini+0x98>
    146f:	e8 cc f8 ff ff       	callq  d40 <puts@plt>
    1474:	b8 00 00 00 00       	mov    $0x0,%eax
    1479:	e8 22 f9 ff ff       	callq  da0 <manage_hw_bp@plt>
    147e:	48 8d 3d 93 07 00 00 	lea    0x793(%rip),%rdi        # 1c18 <_fini+0xc0>
    1485:	e8 b6 f8 ff ff       	callq  d40 <puts@plt>
    148a:	c7 05 8c 1c 20 00 01 	movl   $0x1,0x201c8c(%rip)        # 203120 <flag1>
    1491:	00 00 00 
    1494:	eb 1b                	jmp    14b1 <transition_func+0xc8>
    1496:	48 8b 05 1b 1b 20 00 	mov    0x201b1b(%rip),%rax        # 202fb8 <thread1@@Base-0x138>
    149d:	48 8b 00             	mov    (%rax),%rax
    14a0:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
    14a4:	74 0b                	je     14b1 <transition_func+0xc8>
    14a6:	90                   	nop
    14a7:	8b 05 73 1c 20 00    	mov    0x201c73(%rip),%eax        # 203120 <flag1>
    14ad:	85 c0                	test   %eax,%eax
    14af:	74 f6                	je     14a7 <transition_func+0xbe>
    14b1:	48 8d 3d 88 07 00 00 	lea    0x788(%rip),%rdi        # 1c40 <_fini+0xe8>
    14b8:	e8 83 f8 ff ff       	callq  d40 <puts@plt>
    14bd:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    14c1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    14c5:	48 89 d7             	mov    %rdx,%rdi
    14c8:	ff d0                	callq  *%rax
    14ca:	48 8d 3d 97 07 00 00 	lea    0x797(%rip),%rdi        # 1c68 <_fini+0x110>
    14d1:	e8 6a f8 ff ff       	callq  d40 <puts@plt>
    14d6:	90                   	nop
    14d7:	c9                   	leaveq 
    14d8:	c3                   	retq   

00000000000014d9 <pthread_create>:
    14d9:	55                   	push   %rbp
    14da:	48 89 e5             	mov    %rsp,%rbp
    14dd:	48 81 ec 80 01 00 00 	sub    $0x180,%rsp
    14e4:	48 89 bd 98 fe ff ff 	mov    %rdi,-0x168(%rbp)
    14eb:	48 89 b5 90 fe ff ff 	mov    %rsi,-0x170(%rbp)
    14f2:	48 89 95 88 fe ff ff 	mov    %rdx,-0x178(%rbp)
    14f9:	48 89 8d 80 fe ff ff 	mov    %rcx,-0x180(%rbp)
    1500:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1507:	00 00 
    1509:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    150d:	31 c0                	xor    %eax,%eax
    150f:	48 8d 35 75 07 00 00 	lea    0x775(%rip),%rsi        # 1c8b <_fini+0x133>
    1516:	48 c7 c7 ff ff ff ff 	mov    $0xffffffffffffffff,%rdi
    151d:	e8 7e f9 ff ff       	callq  ea0 <dlsym@plt>
    1522:	48 89 85 a8 fe ff ff 	mov    %rax,-0x158(%rbp)
    1529:	48 8b 05 88 1a 20 00 	mov    0x201a88(%rip),%rax        # 202fb8 <thread1@@Base-0x138>
    1530:	48 8b 00             	mov    (%rax),%rax
    1533:	48 39 85 88 fe ff ff 	cmp    %rax,-0x178(%rbp)
    153a:	0f 85 e3 01 00 00    	jne    1723 <pthread_create+0x24a>
    1540:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
    1547:	48 89 c6             	mov    %rax,%rsi
    154a:	b8 00 00 00 00       	mov    $0x0,%eax
    154f:	ba 10 00 00 00       	mov    $0x10,%edx
    1554:	48 89 f7             	mov    %rsi,%rdi
    1557:	48 89 d1             	mov    %rdx,%rcx
    155a:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    155d:	48 c7 85 b0 fe ff ff 	movq   $0x0,-0x150(%rbp)
    1564:	00 00 00 00 
    1568:	48 81 bd b0 fe ff ff 	cmpq   $0x3ff,-0x150(%rbp)
    156f:	ff 03 00 00 
    1573:	77 4d                	ja     15c2 <pthread_create+0xe9>
    1575:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
    157c:	48 c1 e8 06          	shr    $0x6,%rax
    1580:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1587:	00 
    1588:	48 8d 8d f0 fe ff ff 	lea    -0x110(%rbp),%rcx
    158f:	48 01 ca             	add    %rcx,%rdx
    1592:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
    1599:	00 
    159a:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
    15a1:	48 01 c8             	add    %rcx,%rax
    15a4:	48 8b 00             	mov    (%rax),%rax
    15a7:	48 8b 8d b0 fe ff ff 	mov    -0x150(%rbp),%rcx
    15ae:	83 e1 3f             	and    $0x3f,%ecx
    15b1:	be 01 00 00 00       	mov    $0x1,%esi
    15b6:	48 d3 e6             	shl    %cl,%rsi
    15b9:	48 89 f1             	mov    %rsi,%rcx
    15bc:	48 09 c8             	or     %rcx,%rax
    15bf:	48 89 02             	mov    %rax,(%rdx)
    15c2:	e8 49 f8 ff ff       	callq  e10 <pthread_self@plt>
    15c7:	48 89 c1             	mov    %rax,%rcx
    15ca:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
    15d1:	48 89 c2             	mov    %rax,%rdx
    15d4:	be 80 00 00 00       	mov    $0x80,%esi
    15d9:	48 89 cf             	mov    %rcx,%rdi
    15dc:	e8 af f8 ff ff       	callq  e90 <pthread_setaffinity_np@plt>
    15e1:	85 c0                	test   %eax,%eax
    15e3:	79 23                	jns    1608 <pthread_create+0x12f>
    15e5:	48 8b 05 0c 1a 20 00 	mov    0x201a0c(%rip),%rax        # 202ff8 <stderr@GLIBC_2.2.5>
    15ec:	48 8b 00             	mov    (%rax),%rax
    15ef:	48 89 c1             	mov    %rax,%rcx
    15f2:	ba 1b 00 00 00       	mov    $0x1b,%edx
    15f7:	be 01 00 00 00       	mov    $0x1,%esi
    15fc:	48 8d 3d 89 05 00 00 	lea    0x589(%rip),%rdi        # 1b8c <_fini+0x34>
    1603:	e8 78 f8 ff ff       	callq  e80 <fwrite@plt>
    1608:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
    160f:	48 89 85 e0 fe ff ff 	mov    %rax,-0x120(%rbp)
    1616:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
    161d:	48 89 85 e8 fe ff ff 	mov    %rax,-0x118(%rbp)
    1624:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
    162b:	48 8b b5 90 fe ff ff 	mov    -0x170(%rbp),%rsi
    1632:	48 8b bd 98 fe ff ff 	mov    -0x168(%rbp),%rdi
    1639:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
    1640:	48 89 d1             	mov    %rdx,%rcx
    1643:	48 8b 15 56 19 20 00 	mov    0x201956(%rip),%rdx        # 202fa0 <transition_func@@Base+0x201bb7>
    164a:	ff d0                	callq  *%rax
    164c:	89 85 a4 fe ff ff    	mov    %eax,-0x15c(%rbp)
    1652:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    1659:	48 89 c6             	mov    %rax,%rsi
    165c:	b8 00 00 00 00       	mov    $0x0,%eax
    1661:	ba 10 00 00 00       	mov    $0x10,%edx
    1666:	48 89 f7             	mov    %rsi,%rdi
    1669:	48 89 d1             	mov    %rdx,%rcx
    166c:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    166f:	48 c7 85 b8 fe ff ff 	movq   $0x3,-0x148(%rbp)
    1676:	03 00 00 00 
    167a:	48 81 bd b8 fe ff ff 	cmpq   $0x3ff,-0x148(%rbp)
    1681:	ff 03 00 00 
    1685:	77 4d                	ja     16d4 <pthread_create+0x1fb>
    1687:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
    168e:	48 c1 e8 06          	shr    $0x6,%rax
    1692:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1699:	00 
    169a:	48 8d 8d 70 ff ff ff 	lea    -0x90(%rbp),%rcx
    16a1:	48 01 ca             	add    %rcx,%rdx
    16a4:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
    16ab:	00 
    16ac:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    16b3:	48 01 c8             	add    %rcx,%rax
    16b6:	48 8b 00             	mov    (%rax),%rax
    16b9:	48 8b 8d b8 fe ff ff 	mov    -0x148(%rbp),%rcx
    16c0:	83 e1 3f             	and    $0x3f,%ecx
    16c3:	be 01 00 00 00       	mov    $0x1,%esi
    16c8:	48 d3 e6             	shl    %cl,%rsi
    16cb:	48 89 f1             	mov    %rsi,%rcx
    16ce:	48 09 c8             	or     %rcx,%rax
    16d1:	48 89 02             	mov    %rax,(%rdx)
    16d4:	e8 37 f7 ff ff       	callq  e10 <pthread_self@plt>
    16d9:	48 89 c1             	mov    %rax,%rcx
    16dc:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    16e3:	48 89 c2             	mov    %rax,%rdx
    16e6:	be 80 00 00 00       	mov    $0x80,%esi
    16eb:	48 89 cf             	mov    %rcx,%rdi
    16ee:	e8 9d f7 ff ff       	callq  e90 <pthread_setaffinity_np@plt>
    16f3:	85 c0                	test   %eax,%eax
    16f5:	0f 89 40 04 00 00    	jns    1b3b <pthread_create+0x662>
    16fb:	48 8b 05 f6 18 20 00 	mov    0x2018f6(%rip),%rax        # 202ff8 <stderr@GLIBC_2.2.5>
    1702:	48 8b 00             	mov    (%rax),%rax
    1705:	48 89 c1             	mov    %rax,%rcx
    1708:	ba 1b 00 00 00       	mov    $0x1b,%edx
    170d:	be 01 00 00 00       	mov    $0x1,%esi
    1712:	48 8d 3d 73 04 00 00 	lea    0x473(%rip),%rdi        # 1b8c <_fini+0x34>
    1719:	e8 62 f7 ff ff       	callq  e80 <fwrite@plt>
    171e:	e9 18 04 00 00       	jmpq   1b3b <pthread_create+0x662>
    1723:	48 8b 05 b6 18 20 00 	mov    0x2018b6(%rip),%rax        # 202fe0 <thread2@@Base-0x118>
    172a:	48 8b 00             	mov    (%rax),%rax
    172d:	48 39 85 88 fe ff ff 	cmp    %rax,-0x178(%rbp)
    1734:	0f 85 e3 01 00 00    	jne    191d <pthread_create+0x444>
    173a:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
    1741:	48 89 c6             	mov    %rax,%rsi
    1744:	b8 00 00 00 00       	mov    $0x0,%eax
    1749:	ba 10 00 00 00       	mov    $0x10,%edx
    174e:	48 89 f7             	mov    %rsi,%rdi
    1751:	48 89 d1             	mov    %rdx,%rcx
    1754:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    1757:	48 c7 85 c0 fe ff ff 	movq   $0x1,-0x140(%rbp)
    175e:	01 00 00 00 
    1762:	48 81 bd c0 fe ff ff 	cmpq   $0x3ff,-0x140(%rbp)
    1769:	ff 03 00 00 
    176d:	77 4d                	ja     17bc <pthread_create+0x2e3>
    176f:	48 8b 85 c0 fe ff ff 	mov    -0x140(%rbp),%rax
    1776:	48 c1 e8 06          	shr    $0x6,%rax
    177a:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1781:	00 
    1782:	48 8d 8d f0 fe ff ff 	lea    -0x110(%rbp),%rcx
    1789:	48 01 ca             	add    %rcx,%rdx
    178c:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
    1793:	00 
    1794:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
    179b:	48 01 c8             	add    %rcx,%rax
    179e:	48 8b 00             	mov    (%rax),%rax
    17a1:	48 8b 8d c0 fe ff ff 	mov    -0x140(%rbp),%rcx
    17a8:	83 e1 3f             	and    $0x3f,%ecx
    17ab:	be 01 00 00 00       	mov    $0x1,%esi
    17b0:	48 d3 e6             	shl    %cl,%rsi
    17b3:	48 89 f1             	mov    %rsi,%rcx
    17b6:	48 09 c8             	or     %rcx,%rax
    17b9:	48 89 02             	mov    %rax,(%rdx)
    17bc:	e8 4f f6 ff ff       	callq  e10 <pthread_self@plt>
    17c1:	48 89 c1             	mov    %rax,%rcx
    17c4:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
    17cb:	48 89 c2             	mov    %rax,%rdx
    17ce:	be 80 00 00 00       	mov    $0x80,%esi
    17d3:	48 89 cf             	mov    %rcx,%rdi
    17d6:	e8 b5 f6 ff ff       	callq  e90 <pthread_setaffinity_np@plt>
    17db:	85 c0                	test   %eax,%eax
    17dd:	79 23                	jns    1802 <pthread_create+0x329>
    17df:	48 8b 05 12 18 20 00 	mov    0x201812(%rip),%rax        # 202ff8 <stderr@GLIBC_2.2.5>
    17e6:	48 8b 00             	mov    (%rax),%rax
    17e9:	48 89 c1             	mov    %rax,%rcx
    17ec:	ba 1b 00 00 00       	mov    $0x1b,%edx
    17f1:	be 01 00 00 00       	mov    $0x1,%esi
    17f6:	48 8d 3d 8f 03 00 00 	lea    0x38f(%rip),%rdi        # 1b8c <_fini+0x34>
    17fd:	e8 7e f6 ff ff       	callq  e80 <fwrite@plt>
    1802:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
    1809:	48 89 85 e0 fe ff ff 	mov    %rax,-0x120(%rbp)
    1810:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
    1817:	48 89 85 e8 fe ff ff 	mov    %rax,-0x118(%rbp)
    181e:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
    1825:	48 8b b5 90 fe ff ff 	mov    -0x170(%rbp),%rsi
    182c:	48 8b bd 98 fe ff ff 	mov    -0x168(%rbp),%rdi
    1833:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
    183a:	48 89 d1             	mov    %rdx,%rcx
    183d:	48 8b 15 5c 17 20 00 	mov    0x20175c(%rip),%rdx        # 202fa0 <transition_func@@Base+0x201bb7>
    1844:	ff d0                	callq  *%rax
    1846:	89 85 a4 fe ff ff    	mov    %eax,-0x15c(%rbp)
    184c:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    1853:	48 89 c6             	mov    %rax,%rsi
    1856:	b8 00 00 00 00       	mov    $0x0,%eax
    185b:	ba 10 00 00 00       	mov    $0x10,%edx
    1860:	48 89 f7             	mov    %rsi,%rdi
    1863:	48 89 d1             	mov    %rdx,%rcx
    1866:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    1869:	48 c7 85 c8 fe ff ff 	movq   $0x3,-0x138(%rbp)
    1870:	03 00 00 00 
    1874:	48 81 bd c8 fe ff ff 	cmpq   $0x3ff,-0x138(%rbp)
    187b:	ff 03 00 00 
    187f:	77 4d                	ja     18ce <pthread_create+0x3f5>
    1881:	48 8b 85 c8 fe ff ff 	mov    -0x138(%rbp),%rax
    1888:	48 c1 e8 06          	shr    $0x6,%rax
    188c:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1893:	00 
    1894:	48 8d 8d 70 ff ff ff 	lea    -0x90(%rbp),%rcx
    189b:	48 01 ca             	add    %rcx,%rdx
    189e:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
    18a5:	00 
    18a6:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    18ad:	48 01 c8             	add    %rcx,%rax
    18b0:	48 8b 00             	mov    (%rax),%rax
    18b3:	48 8b 8d c8 fe ff ff 	mov    -0x138(%rbp),%rcx
    18ba:	83 e1 3f             	and    $0x3f,%ecx
    18bd:	be 01 00 00 00       	mov    $0x1,%esi
    18c2:	48 d3 e6             	shl    %cl,%rsi
    18c5:	48 89 f1             	mov    %rsi,%rcx
    18c8:	48 09 c8             	or     %rcx,%rax
    18cb:	48 89 02             	mov    %rax,(%rdx)
    18ce:	e8 3d f5 ff ff       	callq  e10 <pthread_self@plt>
    18d3:	48 89 c1             	mov    %rax,%rcx
    18d6:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    18dd:	48 89 c2             	mov    %rax,%rdx
    18e0:	be 80 00 00 00       	mov    $0x80,%esi
    18e5:	48 89 cf             	mov    %rcx,%rdi
    18e8:	e8 a3 f5 ff ff       	callq  e90 <pthread_setaffinity_np@plt>
    18ed:	85 c0                	test   %eax,%eax
    18ef:	0f 89 46 02 00 00    	jns    1b3b <pthread_create+0x662>
    18f5:	48 8b 05 fc 16 20 00 	mov    0x2016fc(%rip),%rax        # 202ff8 <stderr@GLIBC_2.2.5>
    18fc:	48 8b 00             	mov    (%rax),%rax
    18ff:	48 89 c1             	mov    %rax,%rcx
    1902:	ba 1b 00 00 00       	mov    $0x1b,%edx
    1907:	be 01 00 00 00       	mov    $0x1,%esi
    190c:	48 8d 3d 79 02 00 00 	lea    0x279(%rip),%rdi        # 1b8c <_fini+0x34>
    1913:	e8 68 f5 ff ff       	callq  e80 <fwrite@plt>
    1918:	e9 1e 02 00 00       	jmpq   1b3b <pthread_create+0x662>
    191d:	48 8b 05 9c 16 20 00 	mov    0x20169c(%rip),%rax        # 202fc0 <thread3@@Base-0x158>
    1924:	48 8b 00             	mov    (%rax),%rax
    1927:	48 39 85 88 fe ff ff 	cmp    %rax,-0x178(%rbp)
    192e:	0f 85 dc 01 00 00    	jne    1b10 <pthread_create+0x637>
    1934:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
    193b:	48 89 c6             	mov    %rax,%rsi
    193e:	b8 00 00 00 00       	mov    $0x0,%eax
    1943:	ba 10 00 00 00       	mov    $0x10,%edx
    1948:	48 89 f7             	mov    %rsi,%rdi
    194b:	48 89 d1             	mov    %rdx,%rcx
    194e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    1951:	48 c7 85 d0 fe ff ff 	movq   $0x2,-0x130(%rbp)
    1958:	02 00 00 00 
    195c:	48 81 bd d0 fe ff ff 	cmpq   $0x3ff,-0x130(%rbp)
    1963:	ff 03 00 00 
    1967:	77 4d                	ja     19b6 <pthread_create+0x4dd>
    1969:	48 8b 85 d0 fe ff ff 	mov    -0x130(%rbp),%rax
    1970:	48 c1 e8 06          	shr    $0x6,%rax
    1974:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    197b:	00 
    197c:	48 8d 8d f0 fe ff ff 	lea    -0x110(%rbp),%rcx
    1983:	48 01 ca             	add    %rcx,%rdx
    1986:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
    198d:	00 
    198e:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
    1995:	48 01 c8             	add    %rcx,%rax
    1998:	48 8b 00             	mov    (%rax),%rax
    199b:	48 8b 8d d0 fe ff ff 	mov    -0x130(%rbp),%rcx
    19a2:	83 e1 3f             	and    $0x3f,%ecx
    19a5:	be 01 00 00 00       	mov    $0x1,%esi
    19aa:	48 d3 e6             	shl    %cl,%rsi
    19ad:	48 89 f1             	mov    %rsi,%rcx
    19b0:	48 09 c8             	or     %rcx,%rax
    19b3:	48 89 02             	mov    %rax,(%rdx)
    19b6:	e8 55 f4 ff ff       	callq  e10 <pthread_self@plt>
    19bb:	48 89 c1             	mov    %rax,%rcx
    19be:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
    19c5:	48 89 c2             	mov    %rax,%rdx
    19c8:	be 80 00 00 00       	mov    $0x80,%esi
    19cd:	48 89 cf             	mov    %rcx,%rdi
    19d0:	e8 bb f4 ff ff       	callq  e90 <pthread_setaffinity_np@plt>
    19d5:	85 c0                	test   %eax,%eax
    19d7:	79 23                	jns    19fc <pthread_create+0x523>
    19d9:	48 8b 05 18 16 20 00 	mov    0x201618(%rip),%rax        # 202ff8 <stderr@GLIBC_2.2.5>
    19e0:	48 8b 00             	mov    (%rax),%rax
    19e3:	48 89 c1             	mov    %rax,%rcx
    19e6:	ba 1b 00 00 00       	mov    $0x1b,%edx
    19eb:	be 01 00 00 00       	mov    $0x1,%esi
    19f0:	48 8d 3d 95 01 00 00 	lea    0x195(%rip),%rdi        # 1b8c <_fini+0x34>
    19f7:	e8 84 f4 ff ff       	callq  e80 <fwrite@plt>
    19fc:	48 8b 85 88 fe ff ff 	mov    -0x178(%rbp),%rax
    1a03:	48 89 85 e0 fe ff ff 	mov    %rax,-0x120(%rbp)
    1a0a:	48 8b 85 80 fe ff ff 	mov    -0x180(%rbp),%rax
    1a11:	48 89 85 e8 fe ff ff 	mov    %rax,-0x118(%rbp)
    1a18:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
    1a1f:	48 8b b5 90 fe ff ff 	mov    -0x170(%rbp),%rsi
    1a26:	48 8b bd 98 fe ff ff 	mov    -0x168(%rbp),%rdi
    1a2d:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
    1a34:	48 89 d1             	mov    %rdx,%rcx
    1a37:	48 8b 15 62 15 20 00 	mov    0x201562(%rip),%rdx        # 202fa0 <transition_func@@Base+0x201bb7>
    1a3e:	ff d0                	callq  *%rax
    1a40:	89 85 a4 fe ff ff    	mov    %eax,-0x15c(%rbp)
    1a46:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    1a4d:	48 89 c6             	mov    %rax,%rsi
    1a50:	b8 00 00 00 00       	mov    $0x0,%eax
    1a55:	ba 10 00 00 00       	mov    $0x10,%edx
    1a5a:	48 89 f7             	mov    %rsi,%rdi
    1a5d:	48 89 d1             	mov    %rdx,%rcx
    1a60:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    1a63:	48 c7 85 d8 fe ff ff 	movq   $0x3,-0x128(%rbp)
    1a6a:	03 00 00 00 
    1a6e:	48 81 bd d8 fe ff ff 	cmpq   $0x3ff,-0x128(%rbp)
    1a75:	ff 03 00 00 
    1a79:	77 4d                	ja     1ac8 <pthread_create+0x5ef>
    1a7b:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
    1a82:	48 c1 e8 06          	shr    $0x6,%rax
    1a86:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1a8d:	00 
    1a8e:	48 8d 8d 70 ff ff ff 	lea    -0x90(%rbp),%rcx
    1a95:	48 01 ca             	add    %rcx,%rdx
    1a98:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
    1a9f:	00 
    1aa0:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    1aa7:	48 01 c8             	add    %rcx,%rax
    1aaa:	48 8b 00             	mov    (%rax),%rax
    1aad:	48 8b 8d d8 fe ff ff 	mov    -0x128(%rbp),%rcx
    1ab4:	83 e1 3f             	and    $0x3f,%ecx
    1ab7:	be 01 00 00 00       	mov    $0x1,%esi
    1abc:	48 d3 e6             	shl    %cl,%rsi
    1abf:	48 89 f1             	mov    %rsi,%rcx
    1ac2:	48 09 c8             	or     %rcx,%rax
    1ac5:	48 89 02             	mov    %rax,(%rdx)
    1ac8:	e8 43 f3 ff ff       	callq  e10 <pthread_self@plt>
    1acd:	48 89 c1             	mov    %rax,%rcx
    1ad0:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    1ad7:	48 89 c2             	mov    %rax,%rdx
    1ada:	be 80 00 00 00       	mov    $0x80,%esi
    1adf:	48 89 cf             	mov    %rcx,%rdi
    1ae2:	e8 a9 f3 ff ff       	callq  e90 <pthread_setaffinity_np@plt>
    1ae7:	85 c0                	test   %eax,%eax
    1ae9:	79 50                	jns    1b3b <pthread_create+0x662>
    1aeb:	48 8b 05 06 15 20 00 	mov    0x201506(%rip),%rax        # 202ff8 <stderr@GLIBC_2.2.5>
    1af2:	48 8b 00             	mov    (%rax),%rax
    1af5:	48 89 c1             	mov    %rax,%rcx
    1af8:	ba 1b 00 00 00       	mov    $0x1b,%edx
    1afd:	be 01 00 00 00       	mov    $0x1,%esi
    1b02:	48 8d 3d 83 00 00 00 	lea    0x83(%rip),%rdi        # 1b8c <_fini+0x34>
    1b09:	e8 72 f3 ff ff       	callq  e80 <fwrite@plt>
    1b0e:	eb 2b                	jmp    1b3b <pthread_create+0x662>
    1b10:	48 8b 8d 80 fe ff ff 	mov    -0x180(%rbp),%rcx
    1b17:	48 8b 95 88 fe ff ff 	mov    -0x178(%rbp),%rdx
    1b1e:	48 8b b5 90 fe ff ff 	mov    -0x170(%rbp),%rsi
    1b25:	48 8b bd 98 fe ff ff 	mov    -0x168(%rbp),%rdi
    1b2c:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
    1b33:	ff d0                	callq  *%rax
    1b35:	89 85 a4 fe ff ff    	mov    %eax,-0x15c(%rbp)
    1b3b:	8b 85 a4 fe ff ff    	mov    -0x15c(%rbp),%eax
    1b41:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    1b45:	64 48 33 3c 25 28 00 	xor    %fs:0x28,%rdi
    1b4c:	00 00 
    1b4e:	74 05                	je     1b55 <pthread_create+0x67c>
    1b50:	e8 1b f2 ff ff       	callq  d70 <__stack_chk_fail@plt>
    1b55:	c9                   	leaveq 
    1b56:	c3                   	retq   

Disassembly of section .fini:

0000000000001b58 <_fini>:
    1b58:	48 83 ec 08          	sub    $0x8,%rsp
    1b5c:	48 83 c4 08          	add    $0x8,%rsp
    1b60:	c3                   	retq   
