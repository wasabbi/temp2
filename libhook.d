
libhook.so:     file format elf64-x86-64


Disassembly of section .init:

0000000000000818 <_init>:
 818:	48 83 ec 08          	sub    $0x8,%rsp
 81c:	48 8b 05 ad 17 20 00 	mov    0x2017ad(%rip),%rax        # 201fd0 <__gmon_start__>
 823:	48 85 c0             	test   %rax,%rax
 826:	74 02                	je     82a <_init+0x12>
 828:	ff d0                	callq  *%rax
 82a:	48 83 c4 08          	add    $0x8,%rsp
 82e:	c3                   	retq   

Disassembly of section .plt:

0000000000000830 <.plt>:
 830:	ff 35 d2 17 20 00    	pushq  0x2017d2(%rip)        # 202008 <_GLOBAL_OFFSET_TABLE_+0x8>
 836:	ff 25 d4 17 20 00    	jmpq   *0x2017d4(%rip)        # 202010 <_GLOBAL_OFFSET_TABLE_+0x10>
 83c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000840 <puts@plt>:
 840:	ff 25 d2 17 20 00    	jmpq   *0x2017d2(%rip)        # 202018 <puts@GLIBC_2.2.5>
 846:	68 00 00 00 00       	pushq  $0x0
 84b:	e9 e0 ff ff ff       	jmpq   830 <.plt>

0000000000000850 <__stack_chk_fail@plt>:
 850:	ff 25 ca 17 20 00    	jmpq   *0x2017ca(%rip)        # 202020 <__stack_chk_fail@GLIBC_2.4>
 856:	68 01 00 00 00       	pushq  $0x1
 85b:	e9 d0 ff ff ff       	jmpq   830 <.plt>

0000000000000860 <pthread_setaffinity_np@plt>:
 860:	ff 25 c2 17 20 00    	jmpq   *0x2017c2(%rip)        # 202028 <pthread_setaffinity_np@GLIBC_2.3.4>
 866:	68 02 00 00 00       	pushq  $0x2
 86b:	e9 c0 ff ff ff       	jmpq   830 <.plt>

0000000000000870 <printf@plt>:
 870:	ff 25 ba 17 20 00    	jmpq   *0x2017ba(%rip)        # 202030 <printf@GLIBC_2.2.5>
 876:	68 03 00 00 00       	pushq  $0x3
 87b:	e9 b0 ff ff ff       	jmpq   830 <.plt>

0000000000000880 <pthread_self@plt>:
 880:	ff 25 b2 17 20 00    	jmpq   *0x2017b2(%rip)        # 202038 <pthread_self@GLIBC_2.2.5>
 886:	68 04 00 00 00       	pushq  $0x4
 88b:	e9 a0 ff ff ff       	jmpq   830 <.plt>

0000000000000890 <fwrite@plt>:
 890:	ff 25 aa 17 20 00    	jmpq   *0x2017aa(%rip)        # 202040 <fwrite@GLIBC_2.2.5>
 896:	68 05 00 00 00       	pushq  $0x5
 89b:	e9 90 ff ff ff       	jmpq   830 <.plt>

00000000000008a0 <dlsym@plt>:
 8a0:	ff 25 a2 17 20 00    	jmpq   *0x2017a2(%rip)        # 202048 <dlsym@GLIBC_2.2.5>
 8a6:	68 06 00 00 00       	pushq  $0x6
 8ab:	e9 80 ff ff ff       	jmpq   830 <.plt>

Disassembly of section .plt.got:

00000000000008b0 <__cxa_finalize@plt>:
 8b0:	ff 25 3a 17 20 00    	jmpq   *0x20173a(%rip)        # 201ff0 <__cxa_finalize@GLIBC_2.2.5>
 8b6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000008c0 <deregister_tm_clones>:
 8c0:	48 8d 3d a1 17 20 00 	lea    0x2017a1(%rip),%rdi        # 202068 <_edata>
 8c7:	48 8d 05 a1 17 20 00 	lea    0x2017a1(%rip),%rax        # 20206f <_edata+0x7>
 8ce:	55                   	push   %rbp
 8cf:	48 29 f8             	sub    %rdi,%rax
 8d2:	48 89 e5             	mov    %rsp,%rbp
 8d5:	48 83 f8 0e          	cmp    $0xe,%rax
 8d9:	76 15                	jbe    8f0 <deregister_tm_clones+0x30>
 8db:	48 8b 05 d6 16 20 00 	mov    0x2016d6(%rip),%rax        # 201fb8 <_ITM_deregisterTMCloneTable>
 8e2:	48 85 c0             	test   %rax,%rax
 8e5:	74 09                	je     8f0 <deregister_tm_clones+0x30>
 8e7:	5d                   	pop    %rbp
 8e8:	ff e0                	jmpq   *%rax
 8ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 8f0:	5d                   	pop    %rbp
 8f1:	c3                   	retq   
 8f2:	0f 1f 40 00          	nopl   0x0(%rax)
 8f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8fd:	00 00 00 

0000000000000900 <register_tm_clones>:
 900:	48 8d 3d 61 17 20 00 	lea    0x201761(%rip),%rdi        # 202068 <_edata>
 907:	48 8d 35 5a 17 20 00 	lea    0x20175a(%rip),%rsi        # 202068 <_edata>
 90e:	55                   	push   %rbp
 90f:	48 29 fe             	sub    %rdi,%rsi
 912:	48 89 e5             	mov    %rsp,%rbp
 915:	48 c1 fe 03          	sar    $0x3,%rsi
 919:	48 89 f0             	mov    %rsi,%rax
 91c:	48 c1 e8 3f          	shr    $0x3f,%rax
 920:	48 01 c6             	add    %rax,%rsi
 923:	48 d1 fe             	sar    %rsi
 926:	74 18                	je     940 <register_tm_clones+0x40>
 928:	48 8b 05 b9 16 20 00 	mov    0x2016b9(%rip),%rax        # 201fe8 <_ITM_registerTMCloneTable>
 92f:	48 85 c0             	test   %rax,%rax
 932:	74 0c                	je     940 <register_tm_clones+0x40>
 934:	5d                   	pop    %rbp
 935:	ff e0                	jmpq   *%rax
 937:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 93e:	00 00 
 940:	5d                   	pop    %rbp
 941:	c3                   	retq   
 942:	0f 1f 40 00          	nopl   0x0(%rax)
 946:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 94d:	00 00 00 

0000000000000950 <__do_global_dtors_aux>:
 950:	80 3d 11 17 20 00 00 	cmpb   $0x0,0x201711(%rip)        # 202068 <_edata>
 957:	75 27                	jne    980 <__do_global_dtors_aux+0x30>
 959:	48 83 3d 8f 16 20 00 	cmpq   $0x0,0x20168f(%rip)        # 201ff0 <__cxa_finalize@GLIBC_2.2.5>
 960:	00 
 961:	55                   	push   %rbp
 962:	48 89 e5             	mov    %rsp,%rbp
 965:	74 0c                	je     973 <__do_global_dtors_aux+0x23>
 967:	48 8b 3d e2 16 20 00 	mov    0x2016e2(%rip),%rdi        # 202050 <__dso_handle>
 96e:	e8 3d ff ff ff       	callq  8b0 <__cxa_finalize@plt>
 973:	e8 48 ff ff ff       	callq  8c0 <deregister_tm_clones>
 978:	5d                   	pop    %rbp
 979:	c6 05 e8 16 20 00 01 	movb   $0x1,0x2016e8(%rip)        # 202068 <_edata>
 980:	f3 c3                	repz retq 
 982:	0f 1f 40 00          	nopl   0x0(%rax)
 986:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 98d:	00 00 00 

0000000000000990 <frame_dummy>:
 990:	48 8d 3d 39 14 20 00 	lea    0x201439(%rip),%rdi        # 201dd0 <__JCR_END__>
 997:	48 83 3f 00          	cmpq   $0x0,(%rdi)
 99b:	75 0b                	jne    9a8 <frame_dummy+0x18>
 99d:	e9 5e ff ff ff       	jmpq   900 <register_tm_clones>
 9a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 9a8:	48 8b 05 29 16 20 00 	mov    0x201629(%rip),%rax        # 201fd8 <_Jv_RegisterClasses>
 9af:	48 85 c0             	test   %rax,%rax
 9b2:	74 e9                	je     99d <frame_dummy+0xd>
 9b4:	55                   	push   %rbp
 9b5:	48 89 e5             	mov    %rsp,%rbp
 9b8:	ff d0                	callq  *%rax
 9ba:	5d                   	pop    %rbp
 9bb:	e9 40 ff ff ff       	jmpq   900 <register_tm_clones>

00000000000009c0 <manage_hw_bp>:
 9c0:	55                   	push   %rbp
 9c1:	48 89 e5             	mov    %rsp,%rbp
 9c4:	48 83 ec 10          	sub    $0x10,%rsp
 9c8:	89 7d fc             	mov    %edi,-0x4(%rbp)
 9cb:	89 75 f8             	mov    %esi,-0x8(%rbp)
 9ce:	48 8d 3d 2c 04 00 00 	lea    0x42c(%rip),%rdi        # e01 <_fini+0x9>
 9d5:	e8 66 fe ff ff       	callq  840 <puts@plt>
 9da:	b8 00 00 00 00       	mov    $0x0,%eax
 9df:	c9                   	leaveq 
 9e0:	c3                   	retq   

00000000000009e1 <pthread_create>:
 9e1:	55                   	push   %rbp
 9e2:	48 89 e5             	mov    %rsp,%rbp
 9e5:	48 81 ec e0 00 00 00 	sub    $0xe0,%rsp
 9ec:	48 89 bd 38 ff ff ff 	mov    %rdi,-0xc8(%rbp)
 9f3:	48 89 b5 30 ff ff ff 	mov    %rsi,-0xd0(%rbp)
 9fa:	48 89 95 28 ff ff ff 	mov    %rdx,-0xd8(%rbp)
 a01:	48 89 8d 20 ff ff ff 	mov    %rcx,-0xe0(%rbp)
 a08:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 a0f:	00 00 
 a11:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 a15:	31 c0                	xor    %eax,%eax
 a17:	48 8d 35 e8 03 00 00 	lea    0x3e8(%rip),%rsi        # e06 <_fini+0xe>
 a1e:	48 c7 c7 ff ff ff ff 	mov    $0xffffffffffffffff,%rdi
 a25:	e8 76 fe ff ff       	callq  8a0 <dlsym@plt>
 a2a:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
 a31:	48 8b 05 88 15 20 00 	mov    0x201588(%rip),%rax        # 201fc0 <thread1@@Base-0x98>
 a38:	48 8b 00             	mov    (%rax),%rax
 a3b:	48 39 85 28 ff ff ff 	cmp    %rax,-0xd8(%rbp)
 a42:	0f 85 1c 01 00 00    	jne    b64 <pthread_create+0x183>
 a48:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
 a4f:	48 89 c6             	mov    %rax,%rsi
 a52:	b8 00 00 00 00       	mov    $0x0,%eax
 a57:	ba 10 00 00 00       	mov    $0x10,%edx
 a5c:	48 89 f7             	mov    %rsi,%rdi
 a5f:	48 89 d1             	mov    %rdx,%rcx
 a62:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 a65:	48 c7 85 58 ff ff ff 	movq   $0x0,-0xa8(%rbp)
 a6c:	00 00 00 00 
 a70:	48 81 bd 58 ff ff ff 	cmpq   $0x3ff,-0xa8(%rbp)
 a77:	ff 03 00 00 
 a7b:	77 4d                	ja     aca <pthread_create+0xe9>
 a7d:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
 a84:	48 c1 e8 06          	shr    $0x6,%rax
 a88:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 a8f:	00 
 a90:	48 8d 8d 70 ff ff ff 	lea    -0x90(%rbp),%rcx
 a97:	48 01 ca             	add    %rcx,%rdx
 a9a:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
 aa1:	00 
 aa2:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
 aa9:	48 01 c8             	add    %rcx,%rax
 aac:	48 8b 00             	mov    (%rax),%rax
 aaf:	48 8b 8d 58 ff ff ff 	mov    -0xa8(%rbp),%rcx
 ab6:	83 e1 3f             	and    $0x3f,%ecx
 ab9:	be 01 00 00 00       	mov    $0x1,%esi
 abe:	48 d3 e6             	shl    %cl,%rsi
 ac1:	48 89 f1             	mov    %rsi,%rcx
 ac4:	48 09 c8             	or     %rcx,%rax
 ac7:	48 89 02             	mov    %rax,(%rdx)
 aca:	e8 b1 fd ff ff       	callq  880 <pthread_self@plt>
 acf:	48 89 c1             	mov    %rax,%rcx
 ad2:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
 ad9:	48 89 c2             	mov    %rax,%rdx
 adc:	be 80 00 00 00       	mov    $0x80,%esi
 ae1:	48 89 cf             	mov    %rcx,%rdi
 ae4:	e8 77 fd ff ff       	callq  860 <pthread_setaffinity_np@plt>
 ae9:	85 c0                	test   %eax,%eax
 aeb:	79 23                	jns    b10 <pthread_create+0x12f>
 aed:	48 8b 05 04 15 20 00 	mov    0x201504(%rip),%rax        # 201ff8 <stderr@GLIBC_2.2.5>
 af4:	48 8b 00             	mov    (%rax),%rax
 af7:	48 89 c1             	mov    %rax,%rcx
 afa:	ba 1b 00 00 00       	mov    $0x1b,%edx
 aff:	be 01 00 00 00       	mov    $0x1,%esi
 b04:	48 8d 3d 0a 03 00 00 	lea    0x30a(%rip),%rdi        # e15 <_fini+0x1d>
 b0b:	e8 80 fd ff ff       	callq  890 <fwrite@plt>
 b10:	48 8d 3d 1a 03 00 00 	lea    0x31a(%rip),%rdi        # e31 <_fini+0x39>
 b17:	e8 24 fd ff ff       	callq  840 <puts@plt>
 b1c:	48 8d 35 9d fe ff ff 	lea    -0x163(%rip),%rsi        # 9c0 <manage_hw_bp>
 b23:	48 8d 3d 1d 03 00 00 	lea    0x31d(%rip),%rdi        # e47 <_fini+0x4f>
 b2a:	b8 00 00 00 00       	mov    $0x0,%eax
 b2f:	e8 3c fd ff ff       	callq  870 <printf@plt>
 b34:	48 8b 8d 20 ff ff ff 	mov    -0xe0(%rbp),%rcx
 b3b:	48 8b 95 28 ff ff ff 	mov    -0xd8(%rbp),%rdx
 b42:	48 8b b5 30 ff ff ff 	mov    -0xd0(%rbp),%rsi
 b49:	48 8b bd 38 ff ff ff 	mov    -0xc8(%rbp),%rdi
 b50:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
 b57:	ff d0                	callq  *%rax
 b59:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%rbp)
 b5f:	e9 76 02 00 00       	jmpq   dda <pthread_create+0x3f9>
 b64:	48 8b 05 75 14 20 00 	mov    0x201475(%rip),%rax        # 201fe0 <thread2@@Base-0x80>
 b6b:	48 8b 00             	mov    (%rax),%rax
 b6e:	48 39 85 28 ff ff ff 	cmp    %rax,-0xd8(%rbp)
 b75:	0f 85 1c 01 00 00    	jne    c97 <pthread_create+0x2b6>
 b7b:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
 b82:	48 89 c6             	mov    %rax,%rsi
 b85:	b8 00 00 00 00       	mov    $0x0,%eax
 b8a:	ba 10 00 00 00       	mov    $0x10,%edx
 b8f:	48 89 f7             	mov    %rsi,%rdi
 b92:	48 89 d1             	mov    %rdx,%rcx
 b95:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 b98:	48 c7 85 60 ff ff ff 	movq   $0x1,-0xa0(%rbp)
 b9f:	01 00 00 00 
 ba3:	48 81 bd 60 ff ff ff 	cmpq   $0x3ff,-0xa0(%rbp)
 baa:	ff 03 00 00 
 bae:	77 4d                	ja     bfd <pthread_create+0x21c>
 bb0:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
 bb7:	48 c1 e8 06          	shr    $0x6,%rax
 bbb:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 bc2:	00 
 bc3:	48 8d 8d 70 ff ff ff 	lea    -0x90(%rbp),%rcx
 bca:	48 01 ca             	add    %rcx,%rdx
 bcd:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
 bd4:	00 
 bd5:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
 bdc:	48 01 c8             	add    %rcx,%rax
 bdf:	48 8b 00             	mov    (%rax),%rax
 be2:	48 8b 8d 60 ff ff ff 	mov    -0xa0(%rbp),%rcx
 be9:	83 e1 3f             	and    $0x3f,%ecx
 bec:	be 01 00 00 00       	mov    $0x1,%esi
 bf1:	48 d3 e6             	shl    %cl,%rsi
 bf4:	48 89 f1             	mov    %rsi,%rcx
 bf7:	48 09 c8             	or     %rcx,%rax
 bfa:	48 89 02             	mov    %rax,(%rdx)
 bfd:	e8 7e fc ff ff       	callq  880 <pthread_self@plt>
 c02:	48 89 c1             	mov    %rax,%rcx
 c05:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
 c0c:	48 89 c2             	mov    %rax,%rdx
 c0f:	be 80 00 00 00       	mov    $0x80,%esi
 c14:	48 89 cf             	mov    %rcx,%rdi
 c17:	e8 44 fc ff ff       	callq  860 <pthread_setaffinity_np@plt>
 c1c:	85 c0                	test   %eax,%eax
 c1e:	79 23                	jns    c43 <pthread_create+0x262>
 c20:	48 8b 05 d1 13 20 00 	mov    0x2013d1(%rip),%rax        # 201ff8 <stderr@GLIBC_2.2.5>
 c27:	48 8b 00             	mov    (%rax),%rax
 c2a:	48 89 c1             	mov    %rax,%rcx
 c2d:	ba 1b 00 00 00       	mov    $0x1b,%edx
 c32:	be 01 00 00 00       	mov    $0x1,%esi
 c37:	48 8d 3d d7 01 00 00 	lea    0x1d7(%rip),%rdi        # e15 <_fini+0x1d>
 c3e:	e8 4d fc ff ff       	callq  890 <fwrite@plt>
 c43:	48 8d 3d 0e 02 00 00 	lea    0x20e(%rip),%rdi        # e58 <_fini+0x60>
 c4a:	e8 f1 fb ff ff       	callq  840 <puts@plt>
 c4f:	48 8d 35 6a fd ff ff 	lea    -0x296(%rip),%rsi        # 9c0 <manage_hw_bp>
 c56:	48 8d 3d ea 01 00 00 	lea    0x1ea(%rip),%rdi        # e47 <_fini+0x4f>
 c5d:	b8 00 00 00 00       	mov    $0x0,%eax
 c62:	e8 09 fc ff ff       	callq  870 <printf@plt>
 c67:	48 8b 8d 20 ff ff ff 	mov    -0xe0(%rbp),%rcx
 c6e:	48 8b 95 28 ff ff ff 	mov    -0xd8(%rbp),%rdx
 c75:	48 8b b5 30 ff ff ff 	mov    -0xd0(%rbp),%rsi
 c7c:	48 8b bd 38 ff ff ff 	mov    -0xc8(%rbp),%rdi
 c83:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
 c8a:	ff d0                	callq  *%rax
 c8c:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%rbp)
 c92:	e9 43 01 00 00       	jmpq   dda <pthread_create+0x3f9>
 c97:	48 8b 05 2a 13 20 00 	mov    0x20132a(%rip),%rax        # 201fc8 <thread3@@Base-0xa8>
 c9e:	48 8b 00             	mov    (%rax),%rax
 ca1:	48 39 85 28 ff ff ff 	cmp    %rax,-0xd8(%rbp)
 ca8:	0f 85 01 01 00 00    	jne    daf <pthread_create+0x3ce>
 cae:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
 cb5:	48 89 c6             	mov    %rax,%rsi
 cb8:	b8 00 00 00 00       	mov    $0x0,%eax
 cbd:	ba 10 00 00 00       	mov    $0x10,%edx
 cc2:	48 89 f7             	mov    %rsi,%rdi
 cc5:	48 89 d1             	mov    %rdx,%rcx
 cc8:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 ccb:	48 c7 85 68 ff ff ff 	movq   $0x2,-0x98(%rbp)
 cd2:	02 00 00 00 
 cd6:	48 81 bd 68 ff ff ff 	cmpq   $0x3ff,-0x98(%rbp)
 cdd:	ff 03 00 00 
 ce1:	77 4d                	ja     d30 <pthread_create+0x34f>
 ce3:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
 cea:	48 c1 e8 06          	shr    $0x6,%rax
 cee:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 cf5:	00 
 cf6:	48 8d 8d 70 ff ff ff 	lea    -0x90(%rbp),%rcx
 cfd:	48 01 ca             	add    %rcx,%rdx
 d00:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
 d07:	00 
 d08:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
 d0f:	48 01 c8             	add    %rcx,%rax
 d12:	48 8b 00             	mov    (%rax),%rax
 d15:	48 8b 8d 68 ff ff ff 	mov    -0x98(%rbp),%rcx
 d1c:	83 e1 3f             	and    $0x3f,%ecx
 d1f:	be 01 00 00 00       	mov    $0x1,%esi
 d24:	48 d3 e6             	shl    %cl,%rsi
 d27:	48 89 f1             	mov    %rsi,%rcx
 d2a:	48 09 c8             	or     %rcx,%rax
 d2d:	48 89 02             	mov    %rax,(%rdx)
 d30:	e8 4b fb ff ff       	callq  880 <pthread_self@plt>
 d35:	48 89 c1             	mov    %rax,%rcx
 d38:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
 d3f:	48 89 c2             	mov    %rax,%rdx
 d42:	be 80 00 00 00       	mov    $0x80,%esi
 d47:	48 89 cf             	mov    %rcx,%rdi
 d4a:	e8 11 fb ff ff       	callq  860 <pthread_setaffinity_np@plt>
 d4f:	85 c0                	test   %eax,%eax
 d51:	79 23                	jns    d76 <pthread_create+0x395>
 d53:	48 8b 05 9e 12 20 00 	mov    0x20129e(%rip),%rax        # 201ff8 <stderr@GLIBC_2.2.5>
 d5a:	48 8b 00             	mov    (%rax),%rax
 d5d:	48 89 c1             	mov    %rax,%rcx
 d60:	ba 1b 00 00 00       	mov    $0x1b,%edx
 d65:	be 01 00 00 00       	mov    $0x1,%esi
 d6a:	48 8d 3d a4 00 00 00 	lea    0xa4(%rip),%rdi        # e15 <_fini+0x1d>
 d71:	e8 1a fb ff ff       	callq  890 <fwrite@plt>
 d76:	48 8d 3d f1 00 00 00 	lea    0xf1(%rip),%rdi        # e6e <_fini+0x76>
 d7d:	e8 be fa ff ff       	callq  840 <puts@plt>
 d82:	48 8b 8d 20 ff ff ff 	mov    -0xe0(%rbp),%rcx
 d89:	48 8b 95 28 ff ff ff 	mov    -0xd8(%rbp),%rdx
 d90:	48 8b b5 30 ff ff ff 	mov    -0xd0(%rbp),%rsi
 d97:	48 8b bd 38 ff ff ff 	mov    -0xc8(%rbp),%rdi
 d9e:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
 da5:	ff d0                	callq  *%rax
 da7:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%rbp)
 dad:	eb 2b                	jmp    dda <pthread_create+0x3f9>
 daf:	48 8b 8d 20 ff ff ff 	mov    -0xe0(%rbp),%rcx
 db6:	48 8b 95 28 ff ff ff 	mov    -0xd8(%rbp),%rdx
 dbd:	48 8b b5 30 ff ff ff 	mov    -0xd0(%rbp),%rsi
 dc4:	48 8b bd 38 ff ff ff 	mov    -0xc8(%rbp),%rdi
 dcb:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
 dd2:	ff d0                	callq  *%rax
 dd4:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%rbp)
 dda:	8b 85 4c ff ff ff    	mov    -0xb4(%rbp),%eax
 de0:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
 de4:	64 48 33 3c 25 28 00 	xor    %fs:0x28,%rdi
 deb:	00 00 
 ded:	74 05                	je     df4 <pthread_create+0x413>
 def:	e8 5c fa ff ff       	callq  850 <__stack_chk_fail@plt>
 df4:	c9                   	leaveq 
 df5:	c3                   	retq   

Disassembly of section .fini:

0000000000000df8 <_fini>:
 df8:	48 83 ec 08          	sub    $0x8,%rsp
 dfc:	48 83 c4 08          	add    $0x8,%rsp
 e00:	c3                   	retq   
