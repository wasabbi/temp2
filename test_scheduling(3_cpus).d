
test_scheduling(3_cpus):     file format elf64-x86-64


Disassembly of section .init:

00000000004005c0 <_init>:
  4005c0:	48 83 ec 08          	sub    $0x8,%rsp
  4005c4:	48 8b 05 2d 0a 20 00 	mov    0x200a2d(%rip),%rax        # 600ff8 <__gmon_start__>
  4005cb:	48 85 c0             	test   %rax,%rax
  4005ce:	74 02                	je     4005d2 <_init+0x12>
  4005d0:	ff d0                	callq  *%rax
  4005d2:	48 83 c4 08          	add    $0x8,%rsp
  4005d6:	c3                   	retq   

Disassembly of section .plt:

00000000004005e0 <.plt>:
  4005e0:	ff 35 22 0a 20 00    	pushq  0x200a22(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4005e6:	ff 25 24 0a 20 00    	jmpq   *0x200a24(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4005ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005f0 <pthread_create@plt>:
  4005f0:	ff 25 22 0a 20 00    	jmpq   *0x200a22(%rip)        # 601018 <pthread_create@GLIBC_2.2.5>
  4005f6:	68 00 00 00 00       	pushq  $0x0
  4005fb:	e9 e0 ff ff ff       	jmpq   4005e0 <.plt>

0000000000400600 <puts@plt>:
  400600:	ff 25 1a 0a 20 00    	jmpq   *0x200a1a(%rip)        # 601020 <puts@GLIBC_2.2.5>
  400606:	68 01 00 00 00       	pushq  $0x1
  40060b:	e9 d0 ff ff ff       	jmpq   4005e0 <.plt>

0000000000400610 <__stack_chk_fail@plt>:
  400610:	ff 25 12 0a 20 00    	jmpq   *0x200a12(%rip)        # 601028 <__stack_chk_fail@GLIBC_2.4>
  400616:	68 02 00 00 00       	pushq  $0x2
  40061b:	e9 c0 ff ff ff       	jmpq   4005e0 <.plt>

0000000000400620 <printf@plt>:
  400620:	ff 25 0a 0a 20 00    	jmpq   *0x200a0a(%rip)        # 601030 <printf@GLIBC_2.2.5>
  400626:	68 03 00 00 00       	pushq  $0x3
  40062b:	e9 b0 ff ff ff       	jmpq   4005e0 <.plt>

0000000000400630 <pthread_join@plt>:
  400630:	ff 25 02 0a 20 00    	jmpq   *0x200a02(%rip)        # 601038 <pthread_join@GLIBC_2.2.5>
  400636:	68 04 00 00 00       	pushq  $0x4
  40063b:	e9 a0 ff ff ff       	jmpq   4005e0 <.plt>

0000000000400640 <fwrite@plt>:
  400640:	ff 25 fa 09 20 00    	jmpq   *0x2009fa(%rip)        # 601040 <fwrite@GLIBC_2.2.5>
  400646:	68 05 00 00 00       	pushq  $0x5
  40064b:	e9 90 ff ff ff       	jmpq   4005e0 <.plt>

0000000000400650 <sleep@plt>:
  400650:	ff 25 f2 09 20 00    	jmpq   *0x2009f2(%rip)        # 601048 <sleep@GLIBC_2.2.5>
  400656:	68 06 00 00 00       	pushq  $0x6
  40065b:	e9 80 ff ff ff       	jmpq   4005e0 <.plt>

Disassembly of section .text:

0000000000400660 <_start>:
  400660:	31 ed                	xor    %ebp,%ebp
  400662:	49 89 d1             	mov    %rdx,%r9
  400665:	5e                   	pop    %rsi
  400666:	48 89 e2             	mov    %rsp,%rdx
  400669:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40066d:	50                   	push   %rax
  40066e:	54                   	push   %rsp
  40066f:	49 c7 c0 80 0a 40 00 	mov    $0x400a80,%r8
  400676:	48 c7 c1 10 0a 40 00 	mov    $0x400a10,%rcx
  40067d:	48 c7 c7 37 08 40 00 	mov    $0x400837,%rdi
  400684:	ff 15 66 09 20 00    	callq  *0x200966(%rip)        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  40068a:	f4                   	hlt    
  40068b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400690 <_dl_relocate_static_pie>:
  400690:	f3 c3                	repz retq 
  400692:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400699:	00 00 00 
  40069c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004006a0 <deregister_tm_clones>:
  4006a0:	b8 67 10 60 00       	mov    $0x601067,%eax
  4006a5:	55                   	push   %rbp
  4006a6:	48 2d 60 10 60 00    	sub    $0x601060,%rax
  4006ac:	48 83 f8 0e          	cmp    $0xe,%rax
  4006b0:	48 89 e5             	mov    %rsp,%rbp
  4006b3:	76 1b                	jbe    4006d0 <deregister_tm_clones+0x30>
  4006b5:	b8 00 00 00 00       	mov    $0x0,%eax
  4006ba:	48 85 c0             	test   %rax,%rax
  4006bd:	74 11                	je     4006d0 <deregister_tm_clones+0x30>
  4006bf:	5d                   	pop    %rbp
  4006c0:	bf 60 10 60 00       	mov    $0x601060,%edi
  4006c5:	ff e0                	jmpq   *%rax
  4006c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4006ce:	00 00 
  4006d0:	5d                   	pop    %rbp
  4006d1:	c3                   	retq   
  4006d2:	0f 1f 40 00          	nopl   0x0(%rax)
  4006d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4006dd:	00 00 00 

00000000004006e0 <register_tm_clones>:
  4006e0:	be 60 10 60 00       	mov    $0x601060,%esi
  4006e5:	55                   	push   %rbp
  4006e6:	48 81 ee 60 10 60 00 	sub    $0x601060,%rsi
  4006ed:	48 c1 fe 03          	sar    $0x3,%rsi
  4006f1:	48 89 e5             	mov    %rsp,%rbp
  4006f4:	48 89 f0             	mov    %rsi,%rax
  4006f7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4006fb:	48 01 c6             	add    %rax,%rsi
  4006fe:	48 d1 fe             	sar    %rsi
  400701:	74 15                	je     400718 <register_tm_clones+0x38>
  400703:	b8 00 00 00 00       	mov    $0x0,%eax
  400708:	48 85 c0             	test   %rax,%rax
  40070b:	74 0b                	je     400718 <register_tm_clones+0x38>
  40070d:	5d                   	pop    %rbp
  40070e:	bf 60 10 60 00       	mov    $0x601060,%edi
  400713:	ff e0                	jmpq   *%rax
  400715:	0f 1f 00             	nopl   (%rax)
  400718:	5d                   	pop    %rbp
  400719:	c3                   	retq   
  40071a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400720 <__do_global_dtors_aux>:
  400720:	80 3d 41 09 20 00 00 	cmpb   $0x0,0x200941(%rip)        # 601068 <completed.7667>
  400727:	75 11                	jne    40073a <__do_global_dtors_aux+0x1a>
  400729:	55                   	push   %rbp
  40072a:	48 89 e5             	mov    %rsp,%rbp
  40072d:	e8 6e ff ff ff       	callq  4006a0 <deregister_tm_clones>
  400732:	5d                   	pop    %rbp
  400733:	c6 05 2e 09 20 00 01 	movb   $0x1,0x20092e(%rip)        # 601068 <completed.7667>
  40073a:	f3 c3                	repz retq 
  40073c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400740 <frame_dummy>:
  400740:	bf 08 0e 60 00       	mov    $0x600e08,%edi
  400745:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400749:	75 05                	jne    400750 <frame_dummy+0x10>
  40074b:	eb 93                	jmp    4006e0 <register_tm_clones>
  40074d:	0f 1f 00             	nopl   (%rax)
  400750:	b8 00 00 00 00       	mov    $0x0,%eax
  400755:	48 85 c0             	test   %rax,%rax
  400758:	74 f1                	je     40074b <frame_dummy+0xb>
  40075a:	55                   	push   %rbp
  40075b:	48 89 e5             	mov    %rsp,%rbp
  40075e:	ff d0                	callq  *%rax
  400760:	5d                   	pop    %rbp
  400761:	e9 7a ff ff ff       	jmpq   4006e0 <register_tm_clones>

0000000000400766 <A>:
  400766:	55                   	push   %rbp
  400767:	48 89 e5             	mov    %rsp,%rbp
  40076a:	48 83 ec 10          	sub    $0x10,%rsp
  40076e:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
  400775:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400778:	89 c6                	mov    %eax,%esi
  40077a:	48 8d 3d 13 03 00 00 	lea    0x313(%rip),%rdi        # 400a94 <_IO_stdin_used+0x4>
  400781:	b8 00 00 00 00       	mov    $0x0,%eax
  400786:	e8 95 fe ff ff       	callq  400620 <printf@plt>
  40078b:	bf 01 00 00 00       	mov    $0x1,%edi
  400790:	b8 00 00 00 00       	mov    $0x0,%eax
  400795:	e8 b6 fe ff ff       	callq  400650 <sleep@plt>
  40079a:	8b 05 cc 08 20 00    	mov    0x2008cc(%rip),%eax        # 60106c <x>
  4007a0:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4007a3:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4007a6:	89 c6                	mov    %eax,%esi
  4007a8:	48 8d 3d e5 02 00 00 	lea    0x2e5(%rip),%rdi        # 400a94 <_IO_stdin_used+0x4>
  4007af:	b8 00 00 00 00       	mov    $0x0,%eax
  4007b4:	e8 67 fe ff ff       	callq  400620 <printf@plt>
  4007b9:	90                   	nop
  4007ba:	c9                   	leaveq 
  4007bb:	c3                   	retq   

00000000004007bc <B>:
  4007bc:	55                   	push   %rbp
  4007bd:	48 89 e5             	mov    %rsp,%rbp
  4007c0:	bf 02 00 00 00       	mov    $0x2,%edi
  4007c5:	b8 00 00 00 00       	mov    $0x0,%eax
  4007ca:	e8 81 fe ff ff       	callq  400650 <sleep@plt>
  4007cf:	8b 05 97 08 20 00    	mov    0x200897(%rip),%eax        # 60106c <x>
  4007d5:	83 c0 01             	add    $0x1,%eax
  4007d8:	89 05 8e 08 20 00    	mov    %eax,0x20088e(%rip)        # 60106c <x>
  4007de:	90                   	nop
  4007df:	5d                   	pop    %rbp
  4007e0:	c3                   	retq   

00000000004007e1 <C>:
  4007e1:	55                   	push   %rbp
  4007e2:	48 89 e5             	mov    %rsp,%rbp
  4007e5:	48 83 ec 10          	sub    $0x10,%rsp
  4007e9:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
  4007f0:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4007f3:	89 c6                	mov    %eax,%esi
  4007f5:	48 8d 3d a4 02 00 00 	lea    0x2a4(%rip),%rdi        # 400aa0 <_IO_stdin_used+0x10>
  4007fc:	b8 00 00 00 00       	mov    $0x0,%eax
  400801:	e8 1a fe ff ff       	callq  400620 <printf@plt>
  400806:	bf 03 00 00 00       	mov    $0x3,%edi
  40080b:	b8 00 00 00 00       	mov    $0x0,%eax
  400810:	e8 3b fe ff ff       	callq  400650 <sleep@plt>
  400815:	8b 05 51 08 20 00    	mov    0x200851(%rip),%eax        # 60106c <x>
  40081b:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40081e:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400821:	89 c6                	mov    %eax,%esi
  400823:	48 8d 3d 76 02 00 00 	lea    0x276(%rip),%rdi        # 400aa0 <_IO_stdin_used+0x10>
  40082a:	b8 00 00 00 00       	mov    $0x0,%eax
  40082f:	e8 ec fd ff ff       	callq  400620 <printf@plt>
  400834:	90                   	nop
  400835:	c9                   	leaveq 
  400836:	c3                   	retq   

0000000000400837 <main>:
  400837:	55                   	push   %rbp
  400838:	48 89 e5             	mov    %rsp,%rbp
  40083b:	48 83 ec 20          	sub    $0x20,%rsp
  40083f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400846:	00 00 
  400848:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40084c:	31 c0                	xor    %eax,%eax
  40084e:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  400852:	b9 00 00 00 00       	mov    $0x0,%ecx
  400857:	48 8d 15 08 ff ff ff 	lea    -0xf8(%rip),%rdx        # 400766 <A>
  40085e:	be 00 00 00 00       	mov    $0x0,%esi
  400863:	48 89 c7             	mov    %rax,%rdi
  400866:	e8 85 fd ff ff       	callq  4005f0 <pthread_create@plt>
  40086b:	85 c0                	test   %eax,%eax
  40086d:	74 2a                	je     400899 <main+0x62>
  40086f:	48 8b 05 ea 07 20 00 	mov    0x2007ea(%rip),%rax        # 601060 <stderr@@GLIBC_2.2.5>
  400876:	48 89 c1             	mov    %rax,%rcx
  400879:	ba 16 00 00 00       	mov    $0x16,%edx
  40087e:	be 01 00 00 00       	mov    $0x1,%esi
  400883:	48 8d 3d 22 02 00 00 	lea    0x222(%rip),%rdi        # 400aac <_IO_stdin_used+0x1c>
  40088a:	e8 b1 fd ff ff       	callq  400640 <fwrite@plt>
  40088f:	b8 01 00 00 00       	mov    $0x1,%eax
  400894:	e9 5e 01 00 00       	jmpq   4009f7 <main+0x1c0>
  400899:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  40089d:	b9 00 00 00 00       	mov    $0x0,%ecx
  4008a2:	48 8d 15 13 ff ff ff 	lea    -0xed(%rip),%rdx        # 4007bc <B>
  4008a9:	be 00 00 00 00       	mov    $0x0,%esi
  4008ae:	48 89 c7             	mov    %rax,%rdi
  4008b1:	e8 3a fd ff ff       	callq  4005f0 <pthread_create@plt>
  4008b6:	85 c0                	test   %eax,%eax
  4008b8:	74 2a                	je     4008e4 <main+0xad>
  4008ba:	48 8b 05 9f 07 20 00 	mov    0x20079f(%rip),%rax        # 601060 <stderr@@GLIBC_2.2.5>
  4008c1:	48 89 c1             	mov    %rax,%rcx
  4008c4:	ba 16 00 00 00       	mov    $0x16,%edx
  4008c9:	be 01 00 00 00       	mov    $0x1,%esi
  4008ce:	48 8d 3d d7 01 00 00 	lea    0x1d7(%rip),%rdi        # 400aac <_IO_stdin_used+0x1c>
  4008d5:	e8 66 fd ff ff       	callq  400640 <fwrite@plt>
  4008da:	b8 01 00 00 00       	mov    $0x1,%eax
  4008df:	e9 13 01 00 00       	jmpq   4009f7 <main+0x1c0>
  4008e4:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  4008e8:	b9 00 00 00 00       	mov    $0x0,%ecx
  4008ed:	48 8d 15 ed fe ff ff 	lea    -0x113(%rip),%rdx        # 4007e1 <C>
  4008f4:	be 00 00 00 00       	mov    $0x0,%esi
  4008f9:	48 89 c7             	mov    %rax,%rdi
  4008fc:	e8 ef fc ff ff       	callq  4005f0 <pthread_create@plt>
  400901:	85 c0                	test   %eax,%eax
  400903:	74 2a                	je     40092f <main+0xf8>
  400905:	48 8b 05 54 07 20 00 	mov    0x200754(%rip),%rax        # 601060 <stderr@@GLIBC_2.2.5>
  40090c:	48 89 c1             	mov    %rax,%rcx
  40090f:	ba 16 00 00 00       	mov    $0x16,%edx
  400914:	be 01 00 00 00       	mov    $0x1,%esi
  400919:	48 8d 3d 8c 01 00 00 	lea    0x18c(%rip),%rdi        # 400aac <_IO_stdin_used+0x1c>
  400920:	e8 1b fd ff ff       	callq  400640 <fwrite@plt>
  400925:	b8 01 00 00 00       	mov    $0x1,%eax
  40092a:	e9 c8 00 00 00       	jmpq   4009f7 <main+0x1c0>
  40092f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400933:	be 00 00 00 00       	mov    $0x0,%esi
  400938:	48 89 c7             	mov    %rax,%rdi
  40093b:	e8 f0 fc ff ff       	callq  400630 <pthread_join@plt>
  400940:	85 c0                	test   %eax,%eax
  400942:	74 2a                	je     40096e <main+0x137>
  400944:	48 8b 05 15 07 20 00 	mov    0x200715(%rip),%rax        # 601060 <stderr@@GLIBC_2.2.5>
  40094b:	48 89 c1             	mov    %rax,%rcx
  40094e:	ba 15 00 00 00       	mov    $0x15,%edx
  400953:	be 01 00 00 00       	mov    $0x1,%esi
  400958:	48 8d 3d 64 01 00 00 	lea    0x164(%rip),%rdi        # 400ac3 <_IO_stdin_used+0x33>
  40095f:	e8 dc fc ff ff       	callq  400640 <fwrite@plt>
  400964:	b8 02 00 00 00       	mov    $0x2,%eax
  400969:	e9 89 00 00 00       	jmpq   4009f7 <main+0x1c0>
  40096e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400972:	be 00 00 00 00       	mov    $0x0,%esi
  400977:	48 89 c7             	mov    %rax,%rdi
  40097a:	e8 b1 fc ff ff       	callq  400630 <pthread_join@plt>
  40097f:	85 c0                	test   %eax,%eax
  400981:	74 27                	je     4009aa <main+0x173>
  400983:	48 8b 05 d6 06 20 00 	mov    0x2006d6(%rip),%rax        # 601060 <stderr@@GLIBC_2.2.5>
  40098a:	48 89 c1             	mov    %rax,%rcx
  40098d:	ba 15 00 00 00       	mov    $0x15,%edx
  400992:	be 01 00 00 00       	mov    $0x1,%esi
  400997:	48 8d 3d 25 01 00 00 	lea    0x125(%rip),%rdi        # 400ac3 <_IO_stdin_used+0x33>
  40099e:	e8 9d fc ff ff       	callq  400640 <fwrite@plt>
  4009a3:	b8 02 00 00 00       	mov    $0x2,%eax
  4009a8:	eb 4d                	jmp    4009f7 <main+0x1c0>
  4009aa:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4009ae:	be 00 00 00 00       	mov    $0x0,%esi
  4009b3:	48 89 c7             	mov    %rax,%rdi
  4009b6:	e8 75 fc ff ff       	callq  400630 <pthread_join@plt>
  4009bb:	85 c0                	test   %eax,%eax
  4009bd:	74 27                	je     4009e6 <main+0x1af>
  4009bf:	48 8b 05 9a 06 20 00 	mov    0x20069a(%rip),%rax        # 601060 <stderr@@GLIBC_2.2.5>
  4009c6:	48 89 c1             	mov    %rax,%rcx
  4009c9:	ba 15 00 00 00       	mov    $0x15,%edx
  4009ce:	be 01 00 00 00       	mov    $0x1,%esi
  4009d3:	48 8d 3d e9 00 00 00 	lea    0xe9(%rip),%rdi        # 400ac3 <_IO_stdin_used+0x33>
  4009da:	e8 61 fc ff ff       	callq  400640 <fwrite@plt>
  4009df:	b8 02 00 00 00       	mov    $0x2,%eax
  4009e4:	eb 11                	jmp    4009f7 <main+0x1c0>
  4009e6:	48 8d 3d ec 00 00 00 	lea    0xec(%rip),%rdi        # 400ad9 <_IO_stdin_used+0x49>
  4009ed:	e8 0e fc ff ff       	callq  400600 <puts@plt>
  4009f2:	b8 00 00 00 00       	mov    $0x0,%eax
  4009f7:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4009fb:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  400a02:	00 00 
  400a04:	74 05                	je     400a0b <main+0x1d4>
  400a06:	e8 05 fc ff ff       	callq  400610 <__stack_chk_fail@plt>
  400a0b:	c9                   	leaveq 
  400a0c:	c3                   	retq   
  400a0d:	0f 1f 00             	nopl   (%rax)

0000000000400a10 <__libc_csu_init>:
  400a10:	41 57                	push   %r15
  400a12:	41 56                	push   %r14
  400a14:	49 89 d7             	mov    %rdx,%r15
  400a17:	41 55                	push   %r13
  400a19:	41 54                	push   %r12
  400a1b:	4c 8d 25 d6 03 20 00 	lea    0x2003d6(%rip),%r12        # 600df8 <__frame_dummy_init_array_entry>
  400a22:	55                   	push   %rbp
  400a23:	48 8d 2d d6 03 20 00 	lea    0x2003d6(%rip),%rbp        # 600e00 <__init_array_end>
  400a2a:	53                   	push   %rbx
  400a2b:	41 89 fd             	mov    %edi,%r13d
  400a2e:	49 89 f6             	mov    %rsi,%r14
  400a31:	4c 29 e5             	sub    %r12,%rbp
  400a34:	48 83 ec 08          	sub    $0x8,%rsp
  400a38:	48 c1 fd 03          	sar    $0x3,%rbp
  400a3c:	e8 7f fb ff ff       	callq  4005c0 <_init>
  400a41:	48 85 ed             	test   %rbp,%rbp
  400a44:	74 20                	je     400a66 <__libc_csu_init+0x56>
  400a46:	31 db                	xor    %ebx,%ebx
  400a48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400a4f:	00 
  400a50:	4c 89 fa             	mov    %r15,%rdx
  400a53:	4c 89 f6             	mov    %r14,%rsi
  400a56:	44 89 ef             	mov    %r13d,%edi
  400a59:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400a5d:	48 83 c3 01          	add    $0x1,%rbx
  400a61:	48 39 dd             	cmp    %rbx,%rbp
  400a64:	75 ea                	jne    400a50 <__libc_csu_init+0x40>
  400a66:	48 83 c4 08          	add    $0x8,%rsp
  400a6a:	5b                   	pop    %rbx
  400a6b:	5d                   	pop    %rbp
  400a6c:	41 5c                	pop    %r12
  400a6e:	41 5d                	pop    %r13
  400a70:	41 5e                	pop    %r14
  400a72:	41 5f                	pop    %r15
  400a74:	c3                   	retq   
  400a75:	90                   	nop
  400a76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400a7d:	00 00 00 

0000000000400a80 <__libc_csu_fini>:
  400a80:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400a84 <_fini>:
  400a84:	48 83 ec 08          	sub    $0x8,%rsp
  400a88:	48 83 c4 08          	add    $0x8,%rsp
  400a8c:	c3                   	retq   
