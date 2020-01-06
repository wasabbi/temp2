
test_scheduling(3_cpus):     file format elf64-x86-64


Disassembly of section .text:

0000000012345678 <_start-0x8>:
    12345678:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1234567f:	00 

0000000012345680 <_start>:
    12345680:	31 ed                	xor    %ebp,%ebp
    12345682:	49 89 d1             	mov    %rdx,%r9
    12345685:	5e                   	pop    %rsi
    12345686:	48 89 e2             	mov    %rsp,%rdx
    12345689:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1234568d:	50                   	push   %rax
    1234568e:	54                   	push   %rsp
    1234568f:	49 c7 c0 a0 5a 34 12 	mov    $0x12345aa0,%r8
    12345696:	48 c7 c1 30 5a 34 12 	mov    $0x12345a30,%rcx
    1234569d:	48 c7 c7 57 58 34 12 	mov    $0x12345857,%rdi
    123456a4:	ff 15 46 09 20 00    	callq  *0x200946(%rip)        # 12545ff0 <__libc_start_main@GLIBC_2.2.5>
    123456aa:	f4                   	hlt    
    123456ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000123456b0 <_dl_relocate_static_pie>:
    123456b0:	f3 c3                	repz retq 
    123456b2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    123456b9:	00 00 00 
    123456bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000123456c0 <deregister_tm_clones>:
    123456c0:	b8 67 60 54 12       	mov    $0x12546067,%eax
    123456c5:	55                   	push   %rbp
    123456c6:	48 2d 60 60 54 12    	sub    $0x12546060,%rax
    123456cc:	48 83 f8 0e          	cmp    $0xe,%rax
    123456d0:	48 89 e5             	mov    %rsp,%rbp
    123456d3:	76 1b                	jbe    123456f0 <deregister_tm_clones+0x30>
    123456d5:	b8 00 00 00 00       	mov    $0x0,%eax
    123456da:	48 85 c0             	test   %rax,%rax
    123456dd:	74 11                	je     123456f0 <deregister_tm_clones+0x30>
    123456df:	5d                   	pop    %rbp
    123456e0:	bf 60 60 54 12       	mov    $0x12546060,%edi
    123456e5:	ff e0                	jmpq   *%rax
    123456e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    123456ee:	00 00 
    123456f0:	5d                   	pop    %rbp
    123456f1:	c3                   	retq   
    123456f2:	0f 1f 40 00          	nopl   0x0(%rax)
    123456f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    123456fd:	00 00 00 

0000000012345700 <register_tm_clones>:
    12345700:	be 60 60 54 12       	mov    $0x12546060,%esi
    12345705:	55                   	push   %rbp
    12345706:	48 81 ee 60 60 54 12 	sub    $0x12546060,%rsi
    1234570d:	48 c1 fe 03          	sar    $0x3,%rsi
    12345711:	48 89 e5             	mov    %rsp,%rbp
    12345714:	48 89 f0             	mov    %rsi,%rax
    12345717:	48 c1 e8 3f          	shr    $0x3f,%rax
    1234571b:	48 01 c6             	add    %rax,%rsi
    1234571e:	48 d1 fe             	sar    %rsi
    12345721:	74 15                	je     12345738 <register_tm_clones+0x38>
    12345723:	b8 00 00 00 00       	mov    $0x0,%eax
    12345728:	48 85 c0             	test   %rax,%rax
    1234572b:	74 0b                	je     12345738 <register_tm_clones+0x38>
    1234572d:	5d                   	pop    %rbp
    1234572e:	bf 60 60 54 12       	mov    $0x12546060,%edi
    12345733:	ff e0                	jmpq   *%rax
    12345735:	0f 1f 00             	nopl   (%rax)
    12345738:	5d                   	pop    %rbp
    12345739:	c3                   	retq   
    1234573a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000012345740 <__do_global_dtors_aux>:
    12345740:	80 3d 21 09 20 00 00 	cmpb   $0x0,0x200921(%rip)        # 12546068 <completed.7667>
    12345747:	75 11                	jne    1234575a <__do_global_dtors_aux+0x1a>
    12345749:	55                   	push   %rbp
    1234574a:	48 89 e5             	mov    %rsp,%rbp
    1234574d:	e8 6e ff ff ff       	callq  123456c0 <deregister_tm_clones>
    12345752:	5d                   	pop    %rbp
    12345753:	c6 05 0e 09 20 00 01 	movb   $0x1,0x20090e(%rip)        # 12546068 <completed.7667>
    1234575a:	f3 c3                	repz retq 
    1234575c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000012345760 <frame_dummy>:
    12345760:	bf 08 5e 54 12       	mov    $0x12545e08,%edi
    12345765:	48 83 3f 00          	cmpq   $0x0,(%rdi)
    12345769:	75 05                	jne    12345770 <frame_dummy+0x10>
    1234576b:	eb 93                	jmp    12345700 <register_tm_clones>
    1234576d:	0f 1f 00             	nopl   (%rax)
    12345770:	b8 00 00 00 00       	mov    $0x0,%eax
    12345775:	48 85 c0             	test   %rax,%rax
    12345778:	74 f1                	je     1234576b <frame_dummy+0xb>
    1234577a:	55                   	push   %rbp
    1234577b:	48 89 e5             	mov    %rsp,%rbp
    1234577e:	ff d0                	callq  *%rax
    12345780:	5d                   	pop    %rbp
    12345781:	e9 7a ff ff ff       	jmpq   12345700 <register_tm_clones>

0000000012345786 <A>:
    12345786:	55                   	push   %rbp
    12345787:	48 89 e5             	mov    %rsp,%rbp
    1234578a:	48 83 ec 10          	sub    $0x10,%rsp
    1234578e:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
    12345795:	8b 45 fc             	mov    -0x4(%rbp),%eax
    12345798:	89 c6                	mov    %eax,%esi
    1234579a:	48 8d 3d 13 03 00 00 	lea    0x313(%rip),%rdi        # 12345ab4 <_IO_stdin_used+0x4>
    123457a1:	b8 00 00 00 00       	mov    $0x0,%eax
    123457a6:	e8 a5 ae 0b ee       	callq  400650 <printf@plt>
    123457ab:	bf 01 00 00 00       	mov    $0x1,%edi
    123457b0:	b8 00 00 00 00       	mov    $0x0,%eax
    123457b5:	e8 c6 ae 0b ee       	callq  400680 <sleep@plt>
    123457ba:	8b 05 ac 08 20 00    	mov    0x2008ac(%rip),%eax        # 1254606c <x>
    123457c0:	89 45 fc             	mov    %eax,-0x4(%rbp)
    123457c3:	8b 45 fc             	mov    -0x4(%rbp),%eax
    123457c6:	89 c6                	mov    %eax,%esi
    123457c8:	48 8d 3d e5 02 00 00 	lea    0x2e5(%rip),%rdi        # 12345ab4 <_IO_stdin_used+0x4>
    123457cf:	b8 00 00 00 00       	mov    $0x0,%eax
    123457d4:	e8 77 ae 0b ee       	callq  400650 <printf@plt>
    123457d9:	90                   	nop
    123457da:	c9                   	leaveq 
    123457db:	c3                   	retq   

00000000123457dc <B>:
    123457dc:	55                   	push   %rbp
    123457dd:	48 89 e5             	mov    %rsp,%rbp
    123457e0:	bf 02 00 00 00       	mov    $0x2,%edi
    123457e5:	b8 00 00 00 00       	mov    $0x0,%eax
    123457ea:	e8 91 ae 0b ee       	callq  400680 <sleep@plt>
    123457ef:	8b 05 77 08 20 00    	mov    0x200877(%rip),%eax        # 1254606c <x>
    123457f5:	83 c0 01             	add    $0x1,%eax
    123457f8:	89 05 6e 08 20 00    	mov    %eax,0x20086e(%rip)        # 1254606c <x>
    123457fe:	90                   	nop
    123457ff:	5d                   	pop    %rbp
    12345800:	c3                   	retq   

0000000012345801 <C>:
    12345801:	55                   	push   %rbp
    12345802:	48 89 e5             	mov    %rsp,%rbp
    12345805:	48 83 ec 10          	sub    $0x10,%rsp
    12345809:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
    12345810:	8b 45 fc             	mov    -0x4(%rbp),%eax
    12345813:	89 c6                	mov    %eax,%esi
    12345815:	48 8d 3d a4 02 00 00 	lea    0x2a4(%rip),%rdi        # 12345ac0 <_IO_stdin_used+0x10>
    1234581c:	b8 00 00 00 00       	mov    $0x0,%eax
    12345821:	e8 2a ae 0b ee       	callq  400650 <printf@plt>
    12345826:	bf 03 00 00 00       	mov    $0x3,%edi
    1234582b:	b8 00 00 00 00       	mov    $0x0,%eax
    12345830:	e8 4b ae 0b ee       	callq  400680 <sleep@plt>
    12345835:	8b 05 31 08 20 00    	mov    0x200831(%rip),%eax        # 1254606c <x>
    1234583b:	89 45 fc             	mov    %eax,-0x4(%rbp)
    1234583e:	8b 45 fc             	mov    -0x4(%rbp),%eax
    12345841:	89 c6                	mov    %eax,%esi
    12345843:	48 8d 3d 76 02 00 00 	lea    0x276(%rip),%rdi        # 12345ac0 <_IO_stdin_used+0x10>
    1234584a:	b8 00 00 00 00       	mov    $0x0,%eax
    1234584f:	e8 fc ad 0b ee       	callq  400650 <printf@plt>
    12345854:	90                   	nop
    12345855:	c9                   	leaveq 
    12345856:	c3                   	retq   

0000000012345857 <main>:
    12345857:	55                   	push   %rbp
    12345858:	48 89 e5             	mov    %rsp,%rbp
    1234585b:	48 83 ec 20          	sub    $0x20,%rsp
    1234585f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    12345866:	00 00 
    12345868:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1234586c:	31 c0                	xor    %eax,%eax
    1234586e:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    12345872:	b9 00 00 00 00       	mov    $0x0,%ecx
    12345877:	48 8d 15 08 ff ff ff 	lea    -0xf8(%rip),%rdx        # 12345786 <A>
    1234587e:	be 00 00 00 00       	mov    $0x0,%esi
    12345883:	48 89 c7             	mov    %rax,%rdi
    12345886:	e8 95 ad 0b ee       	callq  400620 <pthread_create@plt>
    1234588b:	85 c0                	test   %eax,%eax
    1234588d:	74 2a                	je     123458b9 <main+0x62>
    1234588f:	48 8b 05 ca 07 20 00 	mov    0x2007ca(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    12345896:	48 89 c1             	mov    %rax,%rcx
    12345899:	ba 16 00 00 00       	mov    $0x16,%edx
    1234589e:	be 01 00 00 00       	mov    $0x1,%esi
    123458a3:	48 8d 3d 22 02 00 00 	lea    0x222(%rip),%rdi        # 12345acc <_IO_stdin_used+0x1c>
    123458aa:	e8 c1 ad 0b ee       	callq  400670 <fwrite@plt>
    123458af:	b8 01 00 00 00       	mov    $0x1,%eax
    123458b4:	e9 5e 01 00 00       	jmpq   12345a17 <main+0x1c0>
    123458b9:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    123458bd:	b9 00 00 00 00       	mov    $0x0,%ecx
    123458c2:	48 8d 15 13 ff ff ff 	lea    -0xed(%rip),%rdx        # 123457dc <B>
    123458c9:	be 00 00 00 00       	mov    $0x0,%esi
    123458ce:	48 89 c7             	mov    %rax,%rdi
    123458d1:	e8 4a ad 0b ee       	callq  400620 <pthread_create@plt>
    123458d6:	85 c0                	test   %eax,%eax
    123458d8:	74 2a                	je     12345904 <main+0xad>
    123458da:	48 8b 05 7f 07 20 00 	mov    0x20077f(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    123458e1:	48 89 c1             	mov    %rax,%rcx
    123458e4:	ba 16 00 00 00       	mov    $0x16,%edx
    123458e9:	be 01 00 00 00       	mov    $0x1,%esi
    123458ee:	48 8d 3d d7 01 00 00 	lea    0x1d7(%rip),%rdi        # 12345acc <_IO_stdin_used+0x1c>
    123458f5:	e8 76 ad 0b ee       	callq  400670 <fwrite@plt>
    123458fa:	b8 01 00 00 00       	mov    $0x1,%eax
    123458ff:	e9 13 01 00 00       	jmpq   12345a17 <main+0x1c0>
    12345904:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    12345908:	b9 00 00 00 00       	mov    $0x0,%ecx
    1234590d:	48 8d 15 ed fe ff ff 	lea    -0x113(%rip),%rdx        # 12345801 <C>
    12345914:	be 00 00 00 00       	mov    $0x0,%esi
    12345919:	48 89 c7             	mov    %rax,%rdi
    1234591c:	e8 ff ac 0b ee       	callq  400620 <pthread_create@plt>
    12345921:	85 c0                	test   %eax,%eax
    12345923:	74 2a                	je     1234594f <main+0xf8>
    12345925:	48 8b 05 34 07 20 00 	mov    0x200734(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    1234592c:	48 89 c1             	mov    %rax,%rcx
    1234592f:	ba 16 00 00 00       	mov    $0x16,%edx
    12345934:	be 01 00 00 00       	mov    $0x1,%esi
    12345939:	48 8d 3d 8c 01 00 00 	lea    0x18c(%rip),%rdi        # 12345acc <_IO_stdin_used+0x1c>
    12345940:	e8 2b ad 0b ee       	callq  400670 <fwrite@plt>
    12345945:	b8 01 00 00 00       	mov    $0x1,%eax
    1234594a:	e9 c8 00 00 00       	jmpq   12345a17 <main+0x1c0>
    1234594f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    12345953:	be 00 00 00 00       	mov    $0x0,%esi
    12345958:	48 89 c7             	mov    %rax,%rdi
    1234595b:	e8 00 ad 0b ee       	callq  400660 <pthread_join@plt>
    12345960:	85 c0                	test   %eax,%eax
    12345962:	74 2a                	je     1234598e <main+0x137>
    12345964:	48 8b 05 f5 06 20 00 	mov    0x2006f5(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    1234596b:	48 89 c1             	mov    %rax,%rcx
    1234596e:	ba 15 00 00 00       	mov    $0x15,%edx
    12345973:	be 01 00 00 00       	mov    $0x1,%esi
    12345978:	48 8d 3d 64 01 00 00 	lea    0x164(%rip),%rdi        # 12345ae3 <_IO_stdin_used+0x33>
    1234597f:	e8 ec ac 0b ee       	callq  400670 <fwrite@plt>
    12345984:	b8 02 00 00 00       	mov    $0x2,%eax
    12345989:	e9 89 00 00 00       	jmpq   12345a17 <main+0x1c0>
    1234598e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12345992:	be 00 00 00 00       	mov    $0x0,%esi
    12345997:	48 89 c7             	mov    %rax,%rdi
    1234599a:	e8 c1 ac 0b ee       	callq  400660 <pthread_join@plt>
    1234599f:	85 c0                	test   %eax,%eax
    123459a1:	74 27                	je     123459ca <main+0x173>
    123459a3:	48 8b 05 b6 06 20 00 	mov    0x2006b6(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    123459aa:	48 89 c1             	mov    %rax,%rcx
    123459ad:	ba 15 00 00 00       	mov    $0x15,%edx
    123459b2:	be 01 00 00 00       	mov    $0x1,%esi
    123459b7:	48 8d 3d 25 01 00 00 	lea    0x125(%rip),%rdi        # 12345ae3 <_IO_stdin_used+0x33>
    123459be:	e8 ad ac 0b ee       	callq  400670 <fwrite@plt>
    123459c3:	b8 02 00 00 00       	mov    $0x2,%eax
    123459c8:	eb 4d                	jmp    12345a17 <main+0x1c0>
    123459ca:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    123459ce:	be 00 00 00 00       	mov    $0x0,%esi
    123459d3:	48 89 c7             	mov    %rax,%rdi
    123459d6:	e8 85 ac 0b ee       	callq  400660 <pthread_join@plt>
    123459db:	85 c0                	test   %eax,%eax
    123459dd:	74 27                	je     12345a06 <main+0x1af>
    123459df:	48 8b 05 7a 06 20 00 	mov    0x20067a(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    123459e6:	48 89 c1             	mov    %rax,%rcx
    123459e9:	ba 15 00 00 00       	mov    $0x15,%edx
    123459ee:	be 01 00 00 00       	mov    $0x1,%esi
    123459f3:	48 8d 3d e9 00 00 00 	lea    0xe9(%rip),%rdi        # 12345ae3 <_IO_stdin_used+0x33>
    123459fa:	e8 71 ac 0b ee       	callq  400670 <fwrite@plt>
    123459ff:	b8 02 00 00 00       	mov    $0x2,%eax
    12345a04:	eb 11                	jmp    12345a17 <main+0x1c0>
    12345a06:	48 8d 3d ec 00 00 00 	lea    0xec(%rip),%rdi        # 12345af9 <_IO_stdin_used+0x49>
    12345a0d:	e8 1e ac 0b ee       	callq  400630 <puts@plt>
    12345a12:	b8 00 00 00 00       	mov    $0x0,%eax
    12345a17:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    12345a1b:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    12345a22:	00 00 
    12345a24:	74 05                	je     12345a2b <main+0x1d4>
    12345a26:	e8 15 ac 0b ee       	callq  400640 <__stack_chk_fail@plt>
    12345a2b:	c9                   	leaveq 
    12345a2c:	c3                   	retq   
    12345a2d:	0f 1f 00             	nopl   (%rax)

0000000012345a30 <__libc_csu_init>:
    12345a30:	41 57                	push   %r15
    12345a32:	41 56                	push   %r14
    12345a34:	49 89 d7             	mov    %rdx,%r15
    12345a37:	41 55                	push   %r13
    12345a39:	41 54                	push   %r12
    12345a3b:	4c 8d 25 b6 03 20 00 	lea    0x2003b6(%rip),%r12        # 12545df8 <__frame_dummy_init_array_entry>
    12345a42:	55                   	push   %rbp
    12345a43:	48 8d 2d b6 03 20 00 	lea    0x2003b6(%rip),%rbp        # 12545e00 <__init_array_end>
    12345a4a:	53                   	push   %rbx
    12345a4b:	41 89 fd             	mov    %edi,%r13d
    12345a4e:	49 89 f6             	mov    %rsi,%r14
    12345a51:	4c 29 e5             	sub    %r12,%rbp
    12345a54:	48 83 ec 08          	sub    $0x8,%rsp
    12345a58:	48 c1 fd 03          	sar    $0x3,%rbp
    12345a5c:	e8 97 ab 0b ee       	callq  4005f8 <_init>
    12345a61:	48 85 ed             	test   %rbp,%rbp
    12345a64:	74 20                	je     12345a86 <__libc_csu_init+0x56>
    12345a66:	31 db                	xor    %ebx,%ebx
    12345a68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    12345a6f:	00 
    12345a70:	4c 89 fa             	mov    %r15,%rdx
    12345a73:	4c 89 f6             	mov    %r14,%rsi
    12345a76:	44 89 ef             	mov    %r13d,%edi
    12345a79:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    12345a7d:	48 83 c3 01          	add    $0x1,%rbx
    12345a81:	48 39 dd             	cmp    %rbx,%rbp
    12345a84:	75 ea                	jne    12345a70 <__libc_csu_init+0x40>
    12345a86:	48 83 c4 08          	add    $0x8,%rsp
    12345a8a:	5b                   	pop    %rbx
    12345a8b:	5d                   	pop    %rbp
    12345a8c:	41 5c                	pop    %r12
    12345a8e:	41 5d                	pop    %r13
    12345a90:	41 5e                	pop    %r14
    12345a92:	41 5f                	pop    %r15
    12345a94:	c3                   	retq   
    12345a95:	90                   	nop
    12345a96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    12345a9d:	00 00 00 

0000000012345aa0 <__libc_csu_fini>:
    12345aa0:	f3 c3                	repz retq 

Disassembly of section .init:

00000000004005f8 <_init>:
  4005f8:	48 83 ec 08          	sub    $0x8,%rsp
  4005fc:	48 8b 05 f5 59 14 12 	mov    0x121459f5(%rip),%rax        # 12545ff8 <__gmon_start__>
  400603:	48 85 c0             	test   %rax,%rax
  400606:	74 02                	je     40060a <_init+0x12>
  400608:	ff d0                	callq  *%rax
  40060a:	48 83 c4 08          	add    $0x8,%rsp
  40060e:	c3                   	retq   

Disassembly of section .plt:

0000000000400610 <.plt>:
  400610:	ff 35 f2 59 14 12    	pushq  0x121459f2(%rip)        # 12546008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400616:	ff 25 f4 59 14 12    	jmpq   *0x121459f4(%rip)        # 12546010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40061c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400620 <pthread_create@plt>:
  400620:	ff 25 f2 59 14 12    	jmpq   *0x121459f2(%rip)        # 12546018 <pthread_create@GLIBC_2.2.5>
  400626:	68 00 00 00 00       	pushq  $0x0
  40062b:	e9 e0 ff ff ff       	jmpq   400610 <.plt>

0000000000400630 <puts@plt>:
  400630:	ff 25 ea 59 14 12    	jmpq   *0x121459ea(%rip)        # 12546020 <puts@GLIBC_2.2.5>
  400636:	68 01 00 00 00       	pushq  $0x1
  40063b:	e9 d0 ff ff ff       	jmpq   400610 <.plt>

0000000000400640 <__stack_chk_fail@plt>:
  400640:	ff 25 e2 59 14 12    	jmpq   *0x121459e2(%rip)        # 12546028 <__stack_chk_fail@GLIBC_2.4>
  400646:	68 02 00 00 00       	pushq  $0x2
  40064b:	e9 c0 ff ff ff       	jmpq   400610 <.plt>

0000000000400650 <printf@plt>:
  400650:	ff 25 da 59 14 12    	jmpq   *0x121459da(%rip)        # 12546030 <printf@GLIBC_2.2.5>
  400656:	68 03 00 00 00       	pushq  $0x3
  40065b:	e9 b0 ff ff ff       	jmpq   400610 <.plt>

0000000000400660 <pthread_join@plt>:
  400660:	ff 25 d2 59 14 12    	jmpq   *0x121459d2(%rip)        # 12546038 <pthread_join@GLIBC_2.2.5>
  400666:	68 04 00 00 00       	pushq  $0x4
  40066b:	e9 a0 ff ff ff       	jmpq   400610 <.plt>

0000000000400670 <fwrite@plt>:
  400670:	ff 25 ca 59 14 12    	jmpq   *0x121459ca(%rip)        # 12546040 <fwrite@GLIBC_2.2.5>
  400676:	68 05 00 00 00       	pushq  $0x5
  40067b:	e9 90 ff ff ff       	jmpq   400610 <.plt>

0000000000400680 <sleep@plt>:
  400680:	ff 25 c2 59 14 12    	jmpq   *0x121459c2(%rip)        # 12546048 <sleep@GLIBC_2.2.5>
  400686:	68 06 00 00 00       	pushq  $0x6
  40068b:	e9 80 ff ff ff       	jmpq   400610 <.plt>

Disassembly of section .fini:

0000000012345aa4 <_fini>:
    12345aa4:	48 83 ec 08          	sub    $0x8,%rsp
    12345aa8:	48 83 c4 08          	add    $0x8,%rsp
    12345aac:	c3                   	retq   
