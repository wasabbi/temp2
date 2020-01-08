
test_scheduling:     file format elf64-x86-64


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
    1234568f:	49 c7 c0 10 5a 34 12 	mov    $0x12345a10,%r8
    12345696:	48 c7 c1 a0 59 34 12 	mov    $0x123459a0,%rcx
    1234569d:	48 c7 c7 47 58 34 12 	mov    $0x12345847,%rdi
    123456a4:	ff 15 46 09 20 00    	callq  *0x200946(%rip)        # 12545ff0 <__libc_start_main@GLIBC_2.2.5>
    123456aa:	f4                   	hlt    
    123456ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000123456b0 <_dl_relocate_static_pie>:
    123456b0:	f3 c3                	repz retq 
    123456b2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    123456b9:	00 00 00 
    123456bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000123456c0 <deregister_tm_clones>:
    123456c0:	55                   	push   %rbp
    123456c1:	b8 60 60 54 12       	mov    $0x12546060,%eax
    123456c6:	48 3d 60 60 54 12    	cmp    $0x12546060,%rax
    123456cc:	48 89 e5             	mov    %rsp,%rbp
    123456cf:	74 17                	je     123456e8 <deregister_tm_clones+0x28>
    123456d1:	b8 00 00 00 00       	mov    $0x0,%eax
    123456d6:	48 85 c0             	test   %rax,%rax
    123456d9:	74 0d                	je     123456e8 <deregister_tm_clones+0x28>
    123456db:	5d                   	pop    %rbp
    123456dc:	bf 60 60 54 12       	mov    $0x12546060,%edi
    123456e1:	ff e0                	jmpq   *%rax
    123456e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    123456e8:	5d                   	pop    %rbp
    123456e9:	c3                   	retq   
    123456ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000123456f0 <register_tm_clones>:
    123456f0:	be 60 60 54 12       	mov    $0x12546060,%esi
    123456f5:	55                   	push   %rbp
    123456f6:	48 81 ee 60 60 54 12 	sub    $0x12546060,%rsi
    123456fd:	48 89 e5             	mov    %rsp,%rbp
    12345700:	48 c1 fe 03          	sar    $0x3,%rsi
    12345704:	48 89 f0             	mov    %rsi,%rax
    12345707:	48 c1 e8 3f          	shr    $0x3f,%rax
    1234570b:	48 01 c6             	add    %rax,%rsi
    1234570e:	48 d1 fe             	sar    %rsi
    12345711:	74 15                	je     12345728 <register_tm_clones+0x38>
    12345713:	b8 00 00 00 00       	mov    $0x0,%eax
    12345718:	48 85 c0             	test   %rax,%rax
    1234571b:	74 0b                	je     12345728 <register_tm_clones+0x38>
    1234571d:	5d                   	pop    %rbp
    1234571e:	bf 60 60 54 12       	mov    $0x12546060,%edi
    12345723:	ff e0                	jmpq   *%rax
    12345725:	0f 1f 00             	nopl   (%rax)
    12345728:	5d                   	pop    %rbp
    12345729:	c3                   	retq   
    1234572a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000012345730 <__do_global_dtors_aux>:
    12345730:	80 3d 31 09 20 00 00 	cmpb   $0x0,0x200931(%rip)        # 12546068 <completed.7697>
    12345737:	75 17                	jne    12345750 <__do_global_dtors_aux+0x20>
    12345739:	55                   	push   %rbp
    1234573a:	48 89 e5             	mov    %rsp,%rbp
    1234573d:	e8 7e ff ff ff       	callq  123456c0 <deregister_tm_clones>
    12345742:	c6 05 1f 09 20 00 01 	movb   $0x1,0x20091f(%rip)        # 12546068 <completed.7697>
    12345749:	5d                   	pop    %rbp
    1234574a:	c3                   	retq   
    1234574b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    12345750:	f3 c3                	repz retq 
    12345752:	0f 1f 40 00          	nopl   0x0(%rax)
    12345756:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1234575d:	00 00 00 

0000000012345760 <frame_dummy>:
    12345760:	55                   	push   %rbp
    12345761:	48 89 e5             	mov    %rsp,%rbp
    12345764:	5d                   	pop    %rbp
    12345765:	eb 89                	jmp    123456f0 <register_tm_clones>

0000000012345767 <A>:
    12345767:	55                   	push   %rbp
    12345768:	48 89 e5             	mov    %rsp,%rbp
    1234576b:	8b 05 fb 08 20 00    	mov    0x2008fb(%rip),%eax        # 1254606c <x>
    12345771:	89 c6                	mov    %eax,%esi
    12345773:	48 8d 3d aa 02 00 00 	lea    0x2aa(%rip),%rdi        # 12345a24 <_IO_stdin_used+0x4>
    1234577a:	b8 00 00 00 00       	mov    $0x0,%eax
    1234577f:	e8 cc ae 0b ee       	callq  400650 <printf@plt>
    12345784:	bf 01 00 00 00       	mov    $0x1,%edi
    12345789:	b8 00 00 00 00       	mov    $0x0,%eax
    1234578e:	e8 ed ae 0b ee       	callq  400680 <sleep@plt>
    12345793:	8b 05 d3 08 20 00    	mov    0x2008d3(%rip),%eax        # 1254606c <x>
    12345799:	89 c6                	mov    %eax,%esi
    1234579b:	48 8d 3d 82 02 00 00 	lea    0x282(%rip),%rdi        # 12345a24 <_IO_stdin_used+0x4>
    123457a2:	b8 00 00 00 00       	mov    $0x0,%eax
    123457a7:	e8 a4 ae 0b ee       	callq  400650 <printf@plt>
    123457ac:	8b 05 ba 08 20 00    	mov    0x2008ba(%rip),%eax        # 1254606c <x>
    123457b2:	83 c0 0a             	add    $0xa,%eax
    123457b5:	89 05 b1 08 20 00    	mov    %eax,0x2008b1(%rip)        # 1254606c <x>
    123457bb:	8b 05 ab 08 20 00    	mov    0x2008ab(%rip),%eax        # 1254606c <x>
    123457c1:	89 c6                	mov    %eax,%esi
    123457c3:	48 8d 3d 5a 02 00 00 	lea    0x25a(%rip),%rdi        # 12345a24 <_IO_stdin_used+0x4>
    123457ca:	b8 00 00 00 00       	mov    $0x0,%eax
    123457cf:	e8 7c ae 0b ee       	callq  400650 <printf@plt>
    123457d4:	90                   	nop
    123457d5:	5d                   	pop    %rbp
    123457d6:	c3                   	retq   

00000000123457d7 <B>:
    123457d7:	55                   	push   %rbp
    123457d8:	48 89 e5             	mov    %rsp,%rbp
    123457db:	8b 05 8b 08 20 00    	mov    0x20088b(%rip),%eax        # 1254606c <x>
    123457e1:	89 c6                	mov    %eax,%esi
    123457e3:	48 8d 3d 46 02 00 00 	lea    0x246(%rip),%rdi        # 12345a30 <_IO_stdin_used+0x10>
    123457ea:	b8 00 00 00 00       	mov    $0x0,%eax
    123457ef:	e8 5c ae 0b ee       	callq  400650 <printf@plt>
    123457f4:	bf 02 00 00 00       	mov    $0x2,%edi
    123457f9:	b8 00 00 00 00       	mov    $0x0,%eax
    123457fe:	e8 7d ae 0b ee       	callq  400680 <sleep@plt>
    12345803:	8b 05 63 08 20 00    	mov    0x200863(%rip),%eax        # 1254606c <x>
    12345809:	89 c6                	mov    %eax,%esi
    1234580b:	48 8d 3d 1e 02 00 00 	lea    0x21e(%rip),%rdi        # 12345a30 <_IO_stdin_used+0x10>
    12345812:	b8 00 00 00 00       	mov    $0x0,%eax
    12345817:	e8 34 ae 0b ee       	callq  400650 <printf@plt>
    1234581c:	8b 05 4a 08 20 00    	mov    0x20084a(%rip),%eax        # 1254606c <x>
    12345822:	83 c0 0a             	add    $0xa,%eax
    12345825:	89 05 41 08 20 00    	mov    %eax,0x200841(%rip)        # 1254606c <x>
    1234582b:	8b 05 3b 08 20 00    	mov    0x20083b(%rip),%eax        # 1254606c <x>
    12345831:	89 c6                	mov    %eax,%esi
    12345833:	48 8d 3d f6 01 00 00 	lea    0x1f6(%rip),%rdi        # 12345a30 <_IO_stdin_used+0x10>
    1234583a:	b8 00 00 00 00       	mov    $0x0,%eax
    1234583f:	e8 0c ae 0b ee       	callq  400650 <printf@plt>
    12345844:	90                   	nop
    12345845:	5d                   	pop    %rbp
    12345846:	c3                   	retq   

0000000012345847 <main>:
    12345847:	55                   	push   %rbp
    12345848:	48 89 e5             	mov    %rsp,%rbp
    1234584b:	48 83 ec 20          	sub    $0x20,%rsp
    1234584f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    12345856:	00 00 
    12345858:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1234585c:	31 c0                	xor    %eax,%eax
    1234585e:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    12345862:	b9 00 00 00 00       	mov    $0x0,%ecx
    12345867:	48 8d 15 f9 fe ff ff 	lea    -0x107(%rip),%rdx        # 12345767 <A>
    1234586e:	be 00 00 00 00       	mov    $0x0,%esi
    12345873:	48 89 c7             	mov    %rax,%rdi
    12345876:	e8 a5 ad 0b ee       	callq  400620 <pthread_create@plt>
    1234587b:	85 c0                	test   %eax,%eax
    1234587d:	74 2a                	je     123458a9 <main+0x62>
    1234587f:	48 8b 05 da 07 20 00 	mov    0x2007da(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    12345886:	48 89 c1             	mov    %rax,%rcx
    12345889:	ba 16 00 00 00       	mov    $0x16,%edx
    1234588e:	be 01 00 00 00       	mov    $0x1,%esi
    12345893:	48 8d 3d a2 01 00 00 	lea    0x1a2(%rip),%rdi        # 12345a3c <_IO_stdin_used+0x1c>
    1234589a:	e8 d1 ad 0b ee       	callq  400670 <fwrite@plt>
    1234589f:	b8 01 00 00 00       	mov    $0x1,%eax
    123458a4:	e9 d4 00 00 00       	jmpq   1234597d <main+0x136>
    123458a9:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    123458ad:	b9 00 00 00 00       	mov    $0x0,%ecx
    123458b2:	48 8d 15 1e ff ff ff 	lea    -0xe2(%rip),%rdx        # 123457d7 <B>
    123458b9:	be 00 00 00 00       	mov    $0x0,%esi
    123458be:	48 89 c7             	mov    %rax,%rdi
    123458c1:	e8 5a ad 0b ee       	callq  400620 <pthread_create@plt>
    123458c6:	85 c0                	test   %eax,%eax
    123458c8:	74 2a                	je     123458f4 <main+0xad>
    123458ca:	48 8b 05 8f 07 20 00 	mov    0x20078f(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    123458d1:	48 89 c1             	mov    %rax,%rcx
    123458d4:	ba 16 00 00 00       	mov    $0x16,%edx
    123458d9:	be 01 00 00 00       	mov    $0x1,%esi
    123458de:	48 8d 3d 57 01 00 00 	lea    0x157(%rip),%rdi        # 12345a3c <_IO_stdin_used+0x1c>
    123458e5:	e8 86 ad 0b ee       	callq  400670 <fwrite@plt>
    123458ea:	b8 01 00 00 00       	mov    $0x1,%eax
    123458ef:	e9 89 00 00 00       	jmpq   1234597d <main+0x136>
    123458f4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    123458f8:	be 00 00 00 00       	mov    $0x0,%esi
    123458fd:	48 89 c7             	mov    %rax,%rdi
    12345900:	e8 5b ad 0b ee       	callq  400660 <pthread_join@plt>
    12345905:	85 c0                	test   %eax,%eax
    12345907:	74 27                	je     12345930 <main+0xe9>
    12345909:	48 8b 05 50 07 20 00 	mov    0x200750(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    12345910:	48 89 c1             	mov    %rax,%rcx
    12345913:	ba 15 00 00 00       	mov    $0x15,%edx
    12345918:	be 01 00 00 00       	mov    $0x1,%esi
    1234591d:	48 8d 3d 2f 01 00 00 	lea    0x12f(%rip),%rdi        # 12345a53 <_IO_stdin_used+0x33>
    12345924:	e8 47 ad 0b ee       	callq  400670 <fwrite@plt>
    12345929:	b8 02 00 00 00       	mov    $0x2,%eax
    1234592e:	eb 4d                	jmp    1234597d <main+0x136>
    12345930:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    12345934:	be 00 00 00 00       	mov    $0x0,%esi
    12345939:	48 89 c7             	mov    %rax,%rdi
    1234593c:	e8 1f ad 0b ee       	callq  400660 <pthread_join@plt>
    12345941:	85 c0                	test   %eax,%eax
    12345943:	74 27                	je     1234596c <main+0x125>
    12345945:	48 8b 05 14 07 20 00 	mov    0x200714(%rip),%rax        # 12546060 <stderr@@GLIBC_2.2.5>
    1234594c:	48 89 c1             	mov    %rax,%rcx
    1234594f:	ba 15 00 00 00       	mov    $0x15,%edx
    12345954:	be 01 00 00 00       	mov    $0x1,%esi
    12345959:	48 8d 3d f3 00 00 00 	lea    0xf3(%rip),%rdi        # 12345a53 <_IO_stdin_used+0x33>
    12345960:	e8 0b ad 0b ee       	callq  400670 <fwrite@plt>
    12345965:	b8 02 00 00 00       	mov    $0x2,%eax
    1234596a:	eb 11                	jmp    1234597d <main+0x136>
    1234596c:	48 8d 3d f6 00 00 00 	lea    0xf6(%rip),%rdi        # 12345a69 <_IO_stdin_used+0x49>
    12345973:	e8 b8 ac 0b ee       	callq  400630 <puts@plt>
    12345978:	b8 00 00 00 00       	mov    $0x0,%eax
    1234597d:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    12345981:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    12345988:	00 00 
    1234598a:	74 05                	je     12345991 <main+0x14a>
    1234598c:	e8 af ac 0b ee       	callq  400640 <__stack_chk_fail@plt>
    12345991:	c9                   	leaveq 
    12345992:	c3                   	retq   
    12345993:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1234599a:	00 00 00 
    1234599d:	0f 1f 00             	nopl   (%rax)

00000000123459a0 <__libc_csu_init>:
    123459a0:	41 57                	push   %r15
    123459a2:	41 56                	push   %r14
    123459a4:	49 89 d7             	mov    %rdx,%r15
    123459a7:	41 55                	push   %r13
    123459a9:	41 54                	push   %r12
    123459ab:	4c 8d 25 4e 04 20 00 	lea    0x20044e(%rip),%r12        # 12545e00 <__frame_dummy_init_array_entry>
    123459b2:	55                   	push   %rbp
    123459b3:	48 8d 2d 4e 04 20 00 	lea    0x20044e(%rip),%rbp        # 12545e08 <__init_array_end>
    123459ba:	53                   	push   %rbx
    123459bb:	41 89 fd             	mov    %edi,%r13d
    123459be:	49 89 f6             	mov    %rsi,%r14
    123459c1:	4c 29 e5             	sub    %r12,%rbp
    123459c4:	48 83 ec 08          	sub    $0x8,%rsp
    123459c8:	48 c1 fd 03          	sar    $0x3,%rbp
    123459cc:	e8 27 ac 0b ee       	callq  4005f8 <_init>
    123459d1:	48 85 ed             	test   %rbp,%rbp
    123459d4:	74 20                	je     123459f6 <__libc_csu_init+0x56>
    123459d6:	31 db                	xor    %ebx,%ebx
    123459d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    123459df:	00 
    123459e0:	4c 89 fa             	mov    %r15,%rdx
    123459e3:	4c 89 f6             	mov    %r14,%rsi
    123459e6:	44 89 ef             	mov    %r13d,%edi
    123459e9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    123459ed:	48 83 c3 01          	add    $0x1,%rbx
    123459f1:	48 39 dd             	cmp    %rbx,%rbp
    123459f4:	75 ea                	jne    123459e0 <__libc_csu_init+0x40>
    123459f6:	48 83 c4 08          	add    $0x8,%rsp
    123459fa:	5b                   	pop    %rbx
    123459fb:	5d                   	pop    %rbp
    123459fc:	41 5c                	pop    %r12
    123459fe:	41 5d                	pop    %r13
    12345a00:	41 5e                	pop    %r14
    12345a02:	41 5f                	pop    %r15
    12345a04:	c3                   	retq   
    12345a05:	90                   	nop
    12345a06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    12345a0d:	00 00 00 

0000000012345a10 <__libc_csu_fini>:
    12345a10:	f3 c3                	repz retq 

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

0000000012345a14 <_fini>:
    12345a14:	48 83 ec 08          	sub    $0x8,%rsp
    12345a18:	48 83 c4 08          	add    $0x8,%rsp
    12345a1c:	c3                   	retq   
