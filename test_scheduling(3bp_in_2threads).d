
test_scheduling(3bp_in_2threads):     file format elf64-x86-64


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
    1234568f:	49 c7 c0 d0 59 34 12 	mov    $0x123459d0,%r8
    12345696:	48 c7 c1 60 59 34 12 	mov    $0x12345960,%rcx
    1234569d:	48 c7 c7 0b 58 34 12 	mov    $0x1234580b,%rdi
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
    1234579a:	48 8d 3d 43 02 00 00 	lea    0x243(%rip),%rdi        # 123459e4 <_IO_stdin_used+0x4>
    123457a1:	b8 00 00 00 00       	mov    $0x0,%eax
    123457a6:	e8 a5 ae 0b ee       	callq  400650 <printf@plt>
    123457ab:	bf 01 00 00 00       	mov    $0x1,%edi
    123457b0:	b8 00 00 00 00       	mov    $0x0,%eax
    123457b5:	e8 c6 ae 0b ee       	callq  400680 <sleep@plt>
    123457ba:	8b 05 ac 08 20 00    	mov    0x2008ac(%rip),%eax        # 1254606c <x>
    123457c0:	83 c0 01             	add    $0x1,%eax
    123457c3:	89 05 a3 08 20 00    	mov    %eax,0x2008a3(%rip)        # 1254606c <x>
    123457c9:	8b 05 9d 08 20 00    	mov    0x20089d(%rip),%eax        # 1254606c <x>
    123457cf:	89 45 fc             	mov    %eax,-0x4(%rbp)
    123457d2:	8b 45 fc             	mov    -0x4(%rbp),%eax
    123457d5:	89 c6                	mov    %eax,%esi
    123457d7:	48 8d 3d 06 02 00 00 	lea    0x206(%rip),%rdi        # 123459e4 <_IO_stdin_used+0x4>
    123457de:	b8 00 00 00 00       	mov    $0x0,%eax
    123457e3:	e8 68 ae 0b ee       	callq  400650 <printf@plt>
    123457e8:	90                   	nop
    123457e9:	c9                   	leaveq 
    123457ea:	c3                   	retq   

00000000123457eb <B>:
    123457eb:	55                   	push   %rbp
    123457ec:	48 89 e5             	mov    %rsp,%rbp
    123457ef:	bf 03 00 00 00       	mov    $0x3,%edi
    123457f4:	b8 00 00 00 00       	mov    $0x0,%eax
    123457f9:	e8 82 ae 0b ee       	callq  400680 <sleep@plt>
    123457fe:	c7 05 64 08 20 00 64 	movl   $0x64,0x200864(%rip)        # 1254606c <x>
    12345805:	00 00 00 
    12345808:	90                   	nop
    12345809:	5d                   	pop    %rbp
    1234580a:	c3                   	retq   

000000001234580b <main>:
    1234580b:	55                   	push   %rbp
    1234580c:	48 89 e5             	mov    %rsp,%rbp
    1234580f:	48 83 ec 20          	sub    $0x20,%rsp
    12345813:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1234581a:	00 00 
    1234581c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    12345820:	31 c0                	xor    %eax,%eax
    12345822:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    12345826:	b9 00 00 00 00       	mov    $0x0,%ecx
    1234582b:	48 8d 15 54 ff ff ff 	lea    -0xac(%rip),%rdx        # 12345786 <A>
    12345832:	be 00 00 00 00       	mov    $0x0,%esi
    12345837:	48 89 c7             	mov    %rax,%rdi
    1234583a:	e8 e1 ad 0b ee       	callq  400620 <pthread_create@plt>
    1234583f:	85 c0                	test   %eax,%eax
    12345841:	74 2a                	je     1234586d <main+0x62>
    12345843:	48 8b 05 16 08 20 00 	mov    0x200816(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    1234584a:	48 89 c1             	mov    %rax,%rcx
    1234584d:	ba 16 00 00 00       	mov    $0x16,%edx
    12345852:	be 01 00 00 00       	mov    $0x1,%esi
    12345857:	48 8d 3d 92 01 00 00 	lea    0x192(%rip),%rdi        # 123459f0 <_IO_stdin_used+0x10>
    1234585e:	e8 0d ae 0b ee       	callq  400670 <fwrite@plt>
    12345863:	b8 01 00 00 00       	mov    $0x1,%eax
    12345868:	e9 d4 00 00 00       	jmpq   12345941 <main+0x136>
    1234586d:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    12345871:	b9 00 00 00 00       	mov    $0x0,%ecx
    12345876:	48 8d 15 6e ff ff ff 	lea    -0x92(%rip),%rdx        # 123457eb <B>
    1234587d:	be 00 00 00 00       	mov    $0x0,%esi
    12345882:	48 89 c7             	mov    %rax,%rdi
    12345885:	e8 96 ad 0b ee       	callq  400620 <pthread_create@plt>
    1234588a:	85 c0                	test   %eax,%eax
    1234588c:	74 2a                	je     123458b8 <main+0xad>
    1234588e:	48 8b 05 cb 07 20 00 	mov    0x2007cb(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    12345895:	48 89 c1             	mov    %rax,%rcx
    12345898:	ba 16 00 00 00       	mov    $0x16,%edx
    1234589d:	be 01 00 00 00       	mov    $0x1,%esi
    123458a2:	48 8d 3d 47 01 00 00 	lea    0x147(%rip),%rdi        # 123459f0 <_IO_stdin_used+0x10>
    123458a9:	e8 c2 ad 0b ee       	callq  400670 <fwrite@plt>
    123458ae:	b8 01 00 00 00       	mov    $0x1,%eax
    123458b3:	e9 89 00 00 00       	jmpq   12345941 <main+0x136>
    123458b8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    123458bc:	be 00 00 00 00       	mov    $0x0,%esi
    123458c1:	48 89 c7             	mov    %rax,%rdi
    123458c4:	e8 97 ad 0b ee       	callq  400660 <pthread_join@plt>
    123458c9:	85 c0                	test   %eax,%eax
    123458cb:	74 27                	je     123458f4 <main+0xe9>
    123458cd:	48 8b 05 8c 07 20 00 	mov    0x20078c(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    123458d4:	48 89 c1             	mov    %rax,%rcx
    123458d7:	ba 15 00 00 00       	mov    $0x15,%edx
    123458dc:	be 01 00 00 00       	mov    $0x1,%esi
    123458e1:	48 8d 3d 1f 01 00 00 	lea    0x11f(%rip),%rdi        # 12345a07 <_IO_stdin_used+0x27>
    123458e8:	e8 83 ad 0b ee       	callq  400670 <fwrite@plt>
    123458ed:	b8 02 00 00 00       	mov    $0x2,%eax
    123458f2:	eb 4d                	jmp    12345941 <main+0x136>
    123458f4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    123458f8:	be 00 00 00 00       	mov    $0x0,%esi
    123458fd:	48 89 c7             	mov    %rax,%rdi
    12345900:	e8 5b ad 0b ee       	callq  400660 <pthread_join@plt>
    12345905:	85 c0                	test   %eax,%eax
    12345907:	74 27                	je     12345930 <main+0x125>
    12345909:	48 8b 05 50 07 20 00 	mov    0x200750(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    12345910:	48 89 c1             	mov    %rax,%rcx
    12345913:	ba 15 00 00 00       	mov    $0x15,%edx
    12345918:	be 01 00 00 00       	mov    $0x1,%esi
    1234591d:	48 8d 3d e3 00 00 00 	lea    0xe3(%rip),%rdi        # 12345a07 <_IO_stdin_used+0x27>
    12345924:	e8 47 ad 0b ee       	callq  400670 <fwrite@plt>
    12345929:	b8 02 00 00 00       	mov    $0x2,%eax
    1234592e:	eb 11                	jmp    12345941 <main+0x136>
    12345930:	48 8d 3d e6 00 00 00 	lea    0xe6(%rip),%rdi        # 12345a1d <_IO_stdin_used+0x3d>
    12345937:	e8 f4 ac 0b ee       	callq  400630 <puts@plt>
    1234593c:	b8 00 00 00 00       	mov    $0x0,%eax
    12345941:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    12345945:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    1234594c:	00 00 
    1234594e:	74 05                	je     12345955 <main+0x14a>
    12345950:	e8 eb ac 0b ee       	callq  400640 <__stack_chk_fail@plt>
    12345955:	c9                   	leaveq 
    12345956:	c3                   	retq   
    12345957:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1234595e:	00 00 

0000000012345960 <__libc_csu_init>:
    12345960:	41 57                	push   %r15
    12345962:	41 56                	push   %r14
    12345964:	49 89 d7             	mov    %rdx,%r15
    12345967:	41 55                	push   %r13
    12345969:	41 54                	push   %r12
    1234596b:	4c 8d 25 86 04 20 00 	lea    0x200486(%rip),%r12        # 12545df8 <__frame_dummy_init_array_entry>
    12345972:	55                   	push   %rbp
    12345973:	48 8d 2d 86 04 20 00 	lea    0x200486(%rip),%rbp        # 12545e00 <__init_array_end>
    1234597a:	53                   	push   %rbx
    1234597b:	41 89 fd             	mov    %edi,%r13d
    1234597e:	49 89 f6             	mov    %rsi,%r14
    12345981:	4c 29 e5             	sub    %r12,%rbp
    12345984:	48 83 ec 08          	sub    $0x8,%rsp
    12345988:	48 c1 fd 03          	sar    $0x3,%rbp
    1234598c:	e8 67 ac 0b ee       	callq  4005f8 <_init>
    12345991:	48 85 ed             	test   %rbp,%rbp
    12345994:	74 20                	je     123459b6 <__libc_csu_init+0x56>
    12345996:	31 db                	xor    %ebx,%ebx
    12345998:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1234599f:	00 
    123459a0:	4c 89 fa             	mov    %r15,%rdx
    123459a3:	4c 89 f6             	mov    %r14,%rsi
    123459a6:	44 89 ef             	mov    %r13d,%edi
    123459a9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    123459ad:	48 83 c3 01          	add    $0x1,%rbx
    123459b1:	48 39 dd             	cmp    %rbx,%rbp
    123459b4:	75 ea                	jne    123459a0 <__libc_csu_init+0x40>
    123459b6:	48 83 c4 08          	add    $0x8,%rsp
    123459ba:	5b                   	pop    %rbx
    123459bb:	5d                   	pop    %rbp
    123459bc:	41 5c                	pop    %r12
    123459be:	41 5d                	pop    %r13
    123459c0:	41 5e                	pop    %r14
    123459c2:	41 5f                	pop    %r15
    123459c4:	c3                   	retq   
    123459c5:	90                   	nop
    123459c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    123459cd:	00 00 00 

00000000123459d0 <__libc_csu_fini>:
    123459d0:	f3 c3                	repz retq 

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

00000000123459d4 <_fini>:
    123459d4:	48 83 ec 08          	sub    $0x8,%rsp
    123459d8:	48 83 c4 08          	add    $0x8,%rsp
    123459dc:	c3                   	retq   
