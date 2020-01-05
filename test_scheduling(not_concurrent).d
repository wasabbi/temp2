
test_scheduling(not_concurrent):     file format elf64-x86-64


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
    1234568f:	49 c7 c0 20 5b 34 12 	mov    $0x12345b20,%r8
    12345696:	48 c7 c1 b0 5a 34 12 	mov    $0x12345ab0,%rcx
    1234569d:	48 c7 c7 d6 58 34 12 	mov    $0x123458d6,%rdi
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
    1234578a:	8b 05 dc 08 20 00    	mov    0x2008dc(%rip),%eax        # 1254606c <x>
    12345790:	89 c6                	mov    %eax,%esi
    12345792:	48 8d 3d 9b 03 00 00 	lea    0x39b(%rip),%rdi        # 12345b34 <_IO_stdin_used+0x4>
    12345799:	b8 00 00 00 00       	mov    $0x0,%eax
    1234579e:	e8 ad ae 0b ee       	callq  400650 <printf@plt>
    123457a3:	bf 01 00 00 00       	mov    $0x1,%edi
    123457a8:	b8 00 00 00 00       	mov    $0x0,%eax
    123457ad:	e8 ce ae 0b ee       	callq  400680 <sleep@plt>
    123457b2:	8b 05 b4 08 20 00    	mov    0x2008b4(%rip),%eax        # 1254606c <x>
    123457b8:	89 c6                	mov    %eax,%esi
    123457ba:	48 8d 3d 73 03 00 00 	lea    0x373(%rip),%rdi        # 12345b34 <_IO_stdin_used+0x4>
    123457c1:	b8 00 00 00 00       	mov    $0x0,%eax
    123457c6:	e8 85 ae 0b ee       	callq  400650 <printf@plt>
    123457cb:	8b 05 9b 08 20 00    	mov    0x20089b(%rip),%eax        # 1254606c <x>
    123457d1:	83 c0 0a             	add    $0xa,%eax
    123457d4:	89 05 92 08 20 00    	mov    %eax,0x200892(%rip)        # 1254606c <x>
    123457da:	8b 05 8c 08 20 00    	mov    0x20088c(%rip),%eax        # 1254606c <x>
    123457e0:	89 c6                	mov    %eax,%esi
    123457e2:	48 8d 3d 4b 03 00 00 	lea    0x34b(%rip),%rdi        # 12345b34 <_IO_stdin_used+0x4>
    123457e9:	b8 00 00 00 00       	mov    $0x0,%eax
    123457ee:	e8 5d ae 0b ee       	callq  400650 <printf@plt>
    123457f3:	90                   	nop
    123457f4:	5d                   	pop    %rbp
    123457f5:	c3                   	retq   

00000000123457f6 <B>:
    123457f6:	55                   	push   %rbp
    123457f7:	48 89 e5             	mov    %rsp,%rbp
    123457fa:	8b 05 6c 08 20 00    	mov    0x20086c(%rip),%eax        # 1254606c <x>
    12345800:	89 c6                	mov    %eax,%esi
    12345802:	48 8d 3d 37 03 00 00 	lea    0x337(%rip),%rdi        # 12345b40 <_IO_stdin_used+0x10>
    12345809:	b8 00 00 00 00       	mov    $0x0,%eax
    1234580e:	e8 3d ae 0b ee       	callq  400650 <printf@plt>
    12345813:	bf 02 00 00 00       	mov    $0x2,%edi
    12345818:	b8 00 00 00 00       	mov    $0x0,%eax
    1234581d:	e8 5e ae 0b ee       	callq  400680 <sleep@plt>
    12345822:	8b 05 44 08 20 00    	mov    0x200844(%rip),%eax        # 1254606c <x>
    12345828:	89 c6                	mov    %eax,%esi
    1234582a:	48 8d 3d 0f 03 00 00 	lea    0x30f(%rip),%rdi        # 12345b40 <_IO_stdin_used+0x10>
    12345831:	b8 00 00 00 00       	mov    $0x0,%eax
    12345836:	e8 15 ae 0b ee       	callq  400650 <printf@plt>
    1234583b:	8b 05 2b 08 20 00    	mov    0x20082b(%rip),%eax        # 1254606c <x>
    12345841:	83 c0 0a             	add    $0xa,%eax
    12345844:	89 05 22 08 20 00    	mov    %eax,0x200822(%rip)        # 1254606c <x>
    1234584a:	8b 05 1c 08 20 00    	mov    0x20081c(%rip),%eax        # 1254606c <x>
    12345850:	89 c6                	mov    %eax,%esi
    12345852:	48 8d 3d e7 02 00 00 	lea    0x2e7(%rip),%rdi        # 12345b40 <_IO_stdin_used+0x10>
    12345859:	b8 00 00 00 00       	mov    $0x0,%eax
    1234585e:	e8 ed ad 0b ee       	callq  400650 <printf@plt>
    12345863:	90                   	nop
    12345864:	5d                   	pop    %rbp
    12345865:	c3                   	retq   

0000000012345866 <C>:
    12345866:	55                   	push   %rbp
    12345867:	48 89 e5             	mov    %rsp,%rbp
    1234586a:	8b 05 fc 07 20 00    	mov    0x2007fc(%rip),%eax        # 1254606c <x>
    12345870:	89 c6                	mov    %eax,%esi
    12345872:	48 8d 3d d3 02 00 00 	lea    0x2d3(%rip),%rdi        # 12345b4c <_IO_stdin_used+0x1c>
    12345879:	b8 00 00 00 00       	mov    $0x0,%eax
    1234587e:	e8 cd ad 0b ee       	callq  400650 <printf@plt>
    12345883:	bf 02 00 00 00       	mov    $0x2,%edi
    12345888:	b8 00 00 00 00       	mov    $0x0,%eax
    1234588d:	e8 ee ad 0b ee       	callq  400680 <sleep@plt>
    12345892:	8b 05 d4 07 20 00    	mov    0x2007d4(%rip),%eax        # 1254606c <x>
    12345898:	89 c6                	mov    %eax,%esi
    1234589a:	48 8d 3d ab 02 00 00 	lea    0x2ab(%rip),%rdi        # 12345b4c <_IO_stdin_used+0x1c>
    123458a1:	b8 00 00 00 00       	mov    $0x0,%eax
    123458a6:	e8 a5 ad 0b ee       	callq  400650 <printf@plt>
    123458ab:	8b 05 bb 07 20 00    	mov    0x2007bb(%rip),%eax        # 1254606c <x>
    123458b1:	83 c0 0a             	add    $0xa,%eax
    123458b4:	89 05 b2 07 20 00    	mov    %eax,0x2007b2(%rip)        # 1254606c <x>
    123458ba:	8b 05 ac 07 20 00    	mov    0x2007ac(%rip),%eax        # 1254606c <x>
    123458c0:	89 c6                	mov    %eax,%esi
    123458c2:	48 8d 3d 83 02 00 00 	lea    0x283(%rip),%rdi        # 12345b4c <_IO_stdin_used+0x1c>
    123458c9:	b8 00 00 00 00       	mov    $0x0,%eax
    123458ce:	e8 7d ad 0b ee       	callq  400650 <printf@plt>
    123458d3:	90                   	nop
    123458d4:	5d                   	pop    %rbp
    123458d5:	c3                   	retq   

00000000123458d6 <main>:
    123458d6:	55                   	push   %rbp
    123458d7:	48 89 e5             	mov    %rsp,%rbp
    123458da:	48 83 ec 20          	sub    $0x20,%rsp
    123458de:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    123458e5:	00 00 
    123458e7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    123458eb:	31 c0                	xor    %eax,%eax
    123458ed:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    123458f1:	b9 00 00 00 00       	mov    $0x0,%ecx
    123458f6:	48 8d 15 89 fe ff ff 	lea    -0x177(%rip),%rdx        # 12345786 <A>
    123458fd:	be 00 00 00 00       	mov    $0x0,%esi
    12345902:	48 89 c7             	mov    %rax,%rdi
    12345905:	e8 16 ad 0b ee       	callq  400620 <pthread_create@plt>
    1234590a:	85 c0                	test   %eax,%eax
    1234590c:	74 2a                	je     12345938 <main+0x62>
    1234590e:	48 8b 05 4b 07 20 00 	mov    0x20074b(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    12345915:	48 89 c1             	mov    %rax,%rcx
    12345918:	ba 16 00 00 00       	mov    $0x16,%edx
    1234591d:	be 01 00 00 00       	mov    $0x1,%esi
    12345922:	48 8d 3d 2f 02 00 00 	lea    0x22f(%rip),%rdi        # 12345b58 <_IO_stdin_used+0x28>
    12345929:	e8 42 ad 0b ee       	callq  400670 <fwrite@plt>
    1234592e:	b8 01 00 00 00       	mov    $0x1,%eax
    12345933:	e9 5e 01 00 00       	jmpq   12345a96 <main+0x1c0>
    12345938:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    1234593c:	b9 00 00 00 00       	mov    $0x0,%ecx
    12345941:	48 8d 15 ae fe ff ff 	lea    -0x152(%rip),%rdx        # 123457f6 <B>
    12345948:	be 00 00 00 00       	mov    $0x0,%esi
    1234594d:	48 89 c7             	mov    %rax,%rdi
    12345950:	e8 cb ac 0b ee       	callq  400620 <pthread_create@plt>
    12345955:	85 c0                	test   %eax,%eax
    12345957:	74 2a                	je     12345983 <main+0xad>
    12345959:	48 8b 05 00 07 20 00 	mov    0x200700(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    12345960:	48 89 c1             	mov    %rax,%rcx
    12345963:	ba 16 00 00 00       	mov    $0x16,%edx
    12345968:	be 01 00 00 00       	mov    $0x1,%esi
    1234596d:	48 8d 3d e4 01 00 00 	lea    0x1e4(%rip),%rdi        # 12345b58 <_IO_stdin_used+0x28>
    12345974:	e8 f7 ac 0b ee       	callq  400670 <fwrite@plt>
    12345979:	b8 01 00 00 00       	mov    $0x1,%eax
    1234597e:	e9 13 01 00 00       	jmpq   12345a96 <main+0x1c0>
    12345983:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    12345987:	be 00 00 00 00       	mov    $0x0,%esi
    1234598c:	48 89 c7             	mov    %rax,%rdi
    1234598f:	e8 cc ac 0b ee       	callq  400660 <pthread_join@plt>
    12345994:	85 c0                	test   %eax,%eax
    12345996:	74 2a                	je     123459c2 <main+0xec>
    12345998:	48 8b 05 c1 06 20 00 	mov    0x2006c1(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    1234599f:	48 89 c1             	mov    %rax,%rcx
    123459a2:	ba 15 00 00 00       	mov    $0x15,%edx
    123459a7:	be 01 00 00 00       	mov    $0x1,%esi
    123459ac:	48 8d 3d bc 01 00 00 	lea    0x1bc(%rip),%rdi        # 12345b6f <_IO_stdin_used+0x3f>
    123459b3:	e8 b8 ac 0b ee       	callq  400670 <fwrite@plt>
    123459b8:	b8 02 00 00 00       	mov    $0x2,%eax
    123459bd:	e9 d4 00 00 00       	jmpq   12345a96 <main+0x1c0>
    123459c2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    123459c6:	be 00 00 00 00       	mov    $0x0,%esi
    123459cb:	48 89 c7             	mov    %rax,%rdi
    123459ce:	e8 8d ac 0b ee       	callq  400660 <pthread_join@plt>
    123459d3:	85 c0                	test   %eax,%eax
    123459d5:	74 2a                	je     12345a01 <main+0x12b>
    123459d7:	48 8b 05 82 06 20 00 	mov    0x200682(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    123459de:	48 89 c1             	mov    %rax,%rcx
    123459e1:	ba 15 00 00 00       	mov    $0x15,%edx
    123459e6:	be 01 00 00 00       	mov    $0x1,%esi
    123459eb:	48 8d 3d 7d 01 00 00 	lea    0x17d(%rip),%rdi        # 12345b6f <_IO_stdin_used+0x3f>
    123459f2:	e8 79 ac 0b ee       	callq  400670 <fwrite@plt>
    123459f7:	b8 02 00 00 00       	mov    $0x2,%eax
    123459fc:	e9 95 00 00 00       	jmpq   12345a96 <main+0x1c0>
    12345a01:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    12345a05:	b9 00 00 00 00       	mov    $0x0,%ecx
    12345a0a:	48 8d 15 55 fe ff ff 	lea    -0x1ab(%rip),%rdx        # 12345866 <C>
    12345a11:	be 00 00 00 00       	mov    $0x0,%esi
    12345a16:	48 89 c7             	mov    %rax,%rdi
    12345a19:	e8 02 ac 0b ee       	callq  400620 <pthread_create@plt>
    12345a1e:	85 c0                	test   %eax,%eax
    12345a20:	74 27                	je     12345a49 <main+0x173>
    12345a22:	48 8b 05 37 06 20 00 	mov    0x200637(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    12345a29:	48 89 c1             	mov    %rax,%rcx
    12345a2c:	ba 16 00 00 00       	mov    $0x16,%edx
    12345a31:	be 01 00 00 00       	mov    $0x1,%esi
    12345a36:	48 8d 3d 1b 01 00 00 	lea    0x11b(%rip),%rdi        # 12345b58 <_IO_stdin_used+0x28>
    12345a3d:	e8 2e ac 0b ee       	callq  400670 <fwrite@plt>
    12345a42:	b8 01 00 00 00       	mov    $0x1,%eax
    12345a47:	eb 4d                	jmp    12345a96 <main+0x1c0>
    12345a49:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    12345a4d:	be 00 00 00 00       	mov    $0x0,%esi
    12345a52:	48 89 c7             	mov    %rax,%rdi
    12345a55:	e8 06 ac 0b ee       	callq  400660 <pthread_join@plt>
    12345a5a:	85 c0                	test   %eax,%eax
    12345a5c:	74 27                	je     12345a85 <main+0x1af>
    12345a5e:	48 8b 05 fb 05 20 00 	mov    0x2005fb(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    12345a65:	48 89 c1             	mov    %rax,%rcx
    12345a68:	ba 15 00 00 00       	mov    $0x15,%edx
    12345a6d:	be 01 00 00 00       	mov    $0x1,%esi
    12345a72:	48 8d 3d f6 00 00 00 	lea    0xf6(%rip),%rdi        # 12345b6f <_IO_stdin_used+0x3f>
    12345a79:	e8 f2 ab 0b ee       	callq  400670 <fwrite@plt>
    12345a7e:	b8 02 00 00 00       	mov    $0x2,%eax
    12345a83:	eb 11                	jmp    12345a96 <main+0x1c0>
    12345a85:	48 8d 3d f9 00 00 00 	lea    0xf9(%rip),%rdi        # 12345b85 <_IO_stdin_used+0x55>
    12345a8c:	e8 9f ab 0b ee       	callq  400630 <puts@plt>
    12345a91:	b8 00 00 00 00       	mov    $0x0,%eax
    12345a96:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    12345a9a:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    12345aa1:	00 00 
    12345aa3:	74 05                	je     12345aaa <main+0x1d4>
    12345aa5:	e8 96 ab 0b ee       	callq  400640 <__stack_chk_fail@plt>
    12345aaa:	c9                   	leaveq 
    12345aab:	c3                   	retq   
    12345aac:	0f 1f 40 00          	nopl   0x0(%rax)

0000000012345ab0 <__libc_csu_init>:
    12345ab0:	41 57                	push   %r15
    12345ab2:	41 56                	push   %r14
    12345ab4:	49 89 d7             	mov    %rdx,%r15
    12345ab7:	41 55                	push   %r13
    12345ab9:	41 54                	push   %r12
    12345abb:	4c 8d 25 36 03 20 00 	lea    0x200336(%rip),%r12        # 12545df8 <__frame_dummy_init_array_entry>
    12345ac2:	55                   	push   %rbp
    12345ac3:	48 8d 2d 36 03 20 00 	lea    0x200336(%rip),%rbp        # 12545e00 <__init_array_end>
    12345aca:	53                   	push   %rbx
    12345acb:	41 89 fd             	mov    %edi,%r13d
    12345ace:	49 89 f6             	mov    %rsi,%r14
    12345ad1:	4c 29 e5             	sub    %r12,%rbp
    12345ad4:	48 83 ec 08          	sub    $0x8,%rsp
    12345ad8:	48 c1 fd 03          	sar    $0x3,%rbp
    12345adc:	e8 17 ab 0b ee       	callq  4005f8 <_init>
    12345ae1:	48 85 ed             	test   %rbp,%rbp
    12345ae4:	74 20                	je     12345b06 <__libc_csu_init+0x56>
    12345ae6:	31 db                	xor    %ebx,%ebx
    12345ae8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    12345aef:	00 
    12345af0:	4c 89 fa             	mov    %r15,%rdx
    12345af3:	4c 89 f6             	mov    %r14,%rsi
    12345af6:	44 89 ef             	mov    %r13d,%edi
    12345af9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    12345afd:	48 83 c3 01          	add    $0x1,%rbx
    12345b01:	48 39 dd             	cmp    %rbx,%rbp
    12345b04:	75 ea                	jne    12345af0 <__libc_csu_init+0x40>
    12345b06:	48 83 c4 08          	add    $0x8,%rsp
    12345b0a:	5b                   	pop    %rbx
    12345b0b:	5d                   	pop    %rbp
    12345b0c:	41 5c                	pop    %r12
    12345b0e:	41 5d                	pop    %r13
    12345b10:	41 5e                	pop    %r14
    12345b12:	41 5f                	pop    %r15
    12345b14:	c3                   	retq   
    12345b15:	90                   	nop
    12345b16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    12345b1d:	00 00 00 

0000000012345b20 <__libc_csu_fini>:
    12345b20:	f3 c3                	repz retq 

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

0000000012345b24 <_fini>:
    12345b24:	48 83 ec 08          	sub    $0x8,%rsp
    12345b28:	48 83 c4 08          	add    $0x8,%rsp
    12345b2c:	c3                   	retq   
