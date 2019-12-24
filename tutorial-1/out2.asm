
hello:     file format elf64-x86-64


Disassembly of section .init:

00000000000007d0 <_init>:
 7d0:	48 83 ec 08          	sub    $0x8,%rsp
 7d4:	48 8b 05 0d 18 20 00 	mov    0x20180d(%rip),%rax        # 201fe8 <__gmon_start__>
 7db:	48 85 c0             	test   %rax,%rax
 7de:	74 02                	je     7e2 <_init+0x12>
 7e0:	ff d0                	callq  *%rax
 7e2:	48 83 c4 08          	add    $0x8,%rsp
 7e6:	c3                   	retq   

Disassembly of section .plt:

00000000000007f0 <.plt>:
 7f0:	ff 35 92 17 20 00    	pushq  0x201792(%rip)        # 201f88 <_GLOBAL_OFFSET_TABLE_+0x8>
 7f6:	ff 25 94 17 20 00    	jmpq   *0x201794(%rip)        # 201f90 <_GLOBAL_OFFSET_TABLE_+0x10>
 7fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000800 <_ZNSolsEf@plt>:
 800:	ff 25 92 17 20 00    	jmpq   *0x201792(%rip)        # 201f98 <_ZNSolsEf@GLIBCXX_3.4>
 806:	68 00 00 00 00       	pushq  $0x0
 80b:	e9 e0 ff ff ff       	jmpq   7f0 <.plt>

0000000000000810 <__cxa_atexit@plt>:
 810:	ff 25 8a 17 20 00    	jmpq   *0x20178a(%rip)        # 201fa0 <__cxa_atexit@GLIBC_2.2.5>
 816:	68 01 00 00 00       	pushq  $0x1
 81b:	e9 d0 ff ff ff       	jmpq   7f0 <.plt>

0000000000000820 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
 820:	ff 25 82 17 20 00    	jmpq   *0x201782(%rip)        # 201fa8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
 826:	68 02 00 00 00       	pushq  $0x2
 82b:	e9 c0 ff ff ff       	jmpq   7f0 <.plt>

0000000000000830 <_ZNSolsEPFRSoS_E@plt>:
 830:	ff 25 7a 17 20 00    	jmpq   *0x20177a(%rip)        # 201fb0 <_ZNSolsEPFRSoS_E@GLIBCXX_3.4>
 836:	68 03 00 00 00       	pushq  $0x3
 83b:	e9 b0 ff ff ff       	jmpq   7f0 <.plt>

0000000000000840 <__stack_chk_fail@plt>:
 840:	ff 25 72 17 20 00    	jmpq   *0x201772(%rip)        # 201fb8 <__stack_chk_fail@GLIBC_2.4>
 846:	68 04 00 00 00       	pushq  $0x4
 84b:	e9 a0 ff ff ff       	jmpq   7f0 <.plt>

0000000000000850 <_ZNSt8ios_base4InitC1Ev@plt>:
 850:	ff 25 6a 17 20 00    	jmpq   *0x20176a(%rip)        # 201fc0 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
 856:	68 05 00 00 00       	pushq  $0x5
 85b:	e9 90 ff ff ff       	jmpq   7f0 <.plt>

Disassembly of section .plt.got:

0000000000000860 <__cxa_finalize@plt>:
 860:	ff 25 62 17 20 00    	jmpq   *0x201762(%rip)        # 201fc8 <__cxa_finalize@GLIBC_2.2.5>
 866:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000870 <_start>:
 870:	31 ed                	xor    %ebp,%ebp
 872:	49 89 d1             	mov    %rdx,%r9
 875:	5e                   	pop    %rsi
 876:	48 89 e2             	mov    %rsp,%rdx
 879:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 87d:	50                   	push   %rax
 87e:	54                   	push   %rsp
 87f:	4c 8d 05 9a 03 00 00 	lea    0x39a(%rip),%r8        # c20 <__libc_csu_fini>
 886:	48 8d 0d 23 03 00 00 	lea    0x323(%rip),%rcx        # bb0 <__libc_csu_init>
 88d:	48 8d 3d e6 00 00 00 	lea    0xe6(%rip),%rdi        # 97a <main>
 894:	ff 15 46 17 20 00    	callq  *0x201746(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 89a:	f4                   	hlt    
 89b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000008a0 <deregister_tm_clones>:
 8a0:	48 8d 3d 69 17 20 00 	lea    0x201769(%rip),%rdi        # 202010 <__TMC_END__>
 8a7:	55                   	push   %rbp
 8a8:	48 8d 05 61 17 20 00 	lea    0x201761(%rip),%rax        # 202010 <__TMC_END__>
 8af:	48 39 f8             	cmp    %rdi,%rax
 8b2:	48 89 e5             	mov    %rsp,%rbp
 8b5:	74 19                	je     8d0 <deregister_tm_clones+0x30>
 8b7:	48 8b 05 1a 17 20 00 	mov    0x20171a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 8be:	48 85 c0             	test   %rax,%rax
 8c1:	74 0d                	je     8d0 <deregister_tm_clones+0x30>
 8c3:	5d                   	pop    %rbp
 8c4:	ff e0                	jmpq   *%rax
 8c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8cd:	00 00 00 
 8d0:	5d                   	pop    %rbp
 8d1:	c3                   	retq   
 8d2:	0f 1f 40 00          	nopl   0x0(%rax)
 8d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8dd:	00 00 00 

00000000000008e0 <register_tm_clones>:
 8e0:	48 8d 3d 29 17 20 00 	lea    0x201729(%rip),%rdi        # 202010 <__TMC_END__>
 8e7:	48 8d 35 22 17 20 00 	lea    0x201722(%rip),%rsi        # 202010 <__TMC_END__>
 8ee:	55                   	push   %rbp
 8ef:	48 29 fe             	sub    %rdi,%rsi
 8f2:	48 89 e5             	mov    %rsp,%rbp
 8f5:	48 c1 fe 03          	sar    $0x3,%rsi
 8f9:	48 89 f0             	mov    %rsi,%rax
 8fc:	48 c1 e8 3f          	shr    $0x3f,%rax
 900:	48 01 c6             	add    %rax,%rsi
 903:	48 d1 fe             	sar    %rsi
 906:	74 18                	je     920 <register_tm_clones+0x40>
 908:	48 8b 05 e1 16 20 00 	mov    0x2016e1(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 90f:	48 85 c0             	test   %rax,%rax
 912:	74 0c                	je     920 <register_tm_clones+0x40>
 914:	5d                   	pop    %rbp
 915:	ff e0                	jmpq   *%rax
 917:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 91e:	00 00 
 920:	5d                   	pop    %rbp
 921:	c3                   	retq   
 922:	0f 1f 40 00          	nopl   0x0(%rax)
 926:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 92d:	00 00 00 

0000000000000930 <__do_global_dtors_aux>:
 930:	80 3d f9 17 20 00 00 	cmpb   $0x0,0x2017f9(%rip)        # 202130 <completed.7697>
 937:	75 2f                	jne    968 <__do_global_dtors_aux+0x38>
 939:	48 83 3d 87 16 20 00 	cmpq   $0x0,0x201687(%rip)        # 201fc8 <__cxa_finalize@GLIBC_2.2.5>
 940:	00 
 941:	55                   	push   %rbp
 942:	48 89 e5             	mov    %rsp,%rbp
 945:	74 0c                	je     953 <__do_global_dtors_aux+0x23>
 947:	48 8b 3d ba 16 20 00 	mov    0x2016ba(%rip),%rdi        # 202008 <__dso_handle>
 94e:	e8 0d ff ff ff       	callq  860 <__cxa_finalize@plt>
 953:	e8 48 ff ff ff       	callq  8a0 <deregister_tm_clones>
 958:	c6 05 d1 17 20 00 01 	movb   $0x1,0x2017d1(%rip)        # 202130 <completed.7697>
 95f:	5d                   	pop    %rbp
 960:	c3                   	retq   
 961:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 968:	f3 c3                	repz retq 
 96a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000970 <frame_dummy>:
 970:	55                   	push   %rbp
 971:	48 89 e5             	mov    %rsp,%rbp
 974:	5d                   	pop    %rbp
 975:	e9 66 ff ff ff       	jmpq   8e0 <register_tm_clones>

000000000000097a <main>:
 97a:	55                   	push   %rbp
 97b:	48 89 e5             	mov    %rsp,%rbp
 97e:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
 985:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 98c:	00 00 
 98e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 992:	31 c0                	xor    %eax,%eax
 994:	f3 0f 10 05 a4 02 00 	movss  0x2a4(%rip),%xmm0        # c40 <_ZStL19piecewise_construct+0xc>
 99b:	00 
 99c:	f3 0f 11 45 90       	movss  %xmm0,-0x70(%rbp)
 9a1:	f3 0f 10 05 9b 02 00 	movss  0x29b(%rip),%xmm0        # c44 <_ZStL19piecewise_construct+0x10>
 9a8:	00 
 9a9:	f3 0f 11 45 94       	movss  %xmm0,-0x6c(%rbp)
 9ae:	f3 0f 10 05 92 02 00 	movss  0x292(%rip),%xmm0        # c48 <_ZStL19piecewise_construct+0x14>
 9b5:	00 
 9b6:	f3 0f 11 45 98       	movss  %xmm0,-0x68(%rbp)
 9bb:	f3 0f 10 05 89 02 00 	movss  0x289(%rip),%xmm0        # c4c <_ZStL19piecewise_construct+0x18>
 9c2:	00 
 9c3:	f3 0f 11 45 9c       	movss  %xmm0,-0x64(%rbp)
 9c8:	f3 0f 10 05 80 02 00 	movss  0x280(%rip),%xmm0        # c50 <_ZStL19piecewise_construct+0x1c>
 9cf:	00 
 9d0:	f3 0f 11 45 a0       	movss  %xmm0,-0x60(%rbp)
 9d5:	f3 0f 10 05 77 02 00 	movss  0x277(%rip),%xmm0        # c54 <_ZStL19piecewise_construct+0x20>
 9dc:	00 
 9dd:	f3 0f 11 45 a4       	movss  %xmm0,-0x5c(%rbp)
 9e2:	f3 0f 10 05 6e 02 00 	movss  0x26e(%rip),%xmm0        # c58 <_ZStL19piecewise_construct+0x24>
 9e9:	00 
 9ea:	f3 0f 11 45 a8       	movss  %xmm0,-0x58(%rbp)
 9ef:	f3 0f 10 05 65 02 00 	movss  0x265(%rip),%xmm0        # c5c <_ZStL19piecewise_construct+0x28>
 9f6:	00 
 9f7:	f3 0f 11 45 ac       	movss  %xmm0,-0x54(%rbp)
 9fc:	f3 0f 10 05 5c 02 00 	movss  0x25c(%rip),%xmm0        # c60 <_ZStL19piecewise_construct+0x2c>
 a03:	00 
 a04:	f3 0f 11 45 b0       	movss  %xmm0,-0x50(%rbp)
 a09:	f3 0f 10 05 53 02 00 	movss  0x253(%rip),%xmm0        # c64 <_ZStL19piecewise_construct+0x30>
 a10:	00 
 a11:	f3 0f 11 45 b4       	movss  %xmm0,-0x4c(%rbp)
 a16:	f3 0f 10 05 4a 02 00 	movss  0x24a(%rip),%xmm0        # c68 <_ZStL19piecewise_construct+0x34>
 a1d:	00 
 a1e:	f3 0f 11 45 b8       	movss  %xmm0,-0x48(%rbp)
 a23:	f3 0f 10 05 41 02 00 	movss  0x241(%rip),%xmm0        # c6c <_ZStL19piecewise_construct+0x38>
 a2a:	00 
 a2b:	f3 0f 11 45 bc       	movss  %xmm0,-0x44(%rbp)
 a30:	f3 0f 10 05 38 02 00 	movss  0x238(%rip),%xmm0        # c70 <_ZStL19piecewise_construct+0x3c>
 a37:	00 
 a38:	f3 0f 11 45 c0       	movss  %xmm0,-0x40(%rbp)
 a3d:	f3 0f 10 05 2f 02 00 	movss  0x22f(%rip),%xmm0        # c74 <_ZStL19piecewise_construct+0x40>
 a44:	00 
 a45:	f3 0f 11 45 c4       	movss  %xmm0,-0x3c(%rbp)
 a4a:	f3 0f 10 05 26 02 00 	movss  0x226(%rip),%xmm0        # c78 <_ZStL19piecewise_construct+0x44>
 a51:	00 
 a52:	f3 0f 11 45 c8       	movss  %xmm0,-0x38(%rbp)
 a57:	f3 0f 10 05 1d 02 00 	movss  0x21d(%rip),%xmm0        # c7c <_ZStL19piecewise_construct+0x48>
 a5e:	00 
 a5f:	f3 0f 11 45 cc       	movss  %xmm0,-0x34(%rbp)
 a64:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
 a6b:	00 
 a6c:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
 a73:	00 
 a74:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
 a7b:	00 
 a7c:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
 a83:	00 
 a84:	c7 45 88 00 00 00 00 	movl   $0x0,-0x78(%rbp)
 a8b:	83 7d 88 07          	cmpl   $0x7,-0x78(%rbp)
 a8f:	7f 2b                	jg     abc <main+0x142>
 a91:	8b 45 88             	mov    -0x78(%rbp),%eax
 a94:	48 98                	cltq   
 a96:	f3 0f 10 44 85 90    	movss  -0x70(%rbp,%rax,4),%xmm0
 a9c:	8b 45 88             	mov    -0x78(%rbp),%eax
 a9f:	48 98                	cltq   
 aa1:	f3 0f 10 4c 85 b0    	movss  -0x50(%rbp,%rax,4),%xmm1
 aa7:	f3 0f 5c c1          	subss  %xmm1,%xmm0
 aab:	8b 45 88             	mov    -0x78(%rbp),%eax
 aae:	48 98                	cltq   
 ab0:	f3 0f 11 44 85 d0    	movss  %xmm0,-0x30(%rbp,%rax,4)
 ab6:	83 45 88 01          	addl   $0x1,-0x78(%rbp)
 aba:	eb cf                	jmp    a8b <main+0x111>
 abc:	48 8d 35 72 01 00 00 	lea    0x172(%rip),%rsi        # c35 <_ZStL19piecewise_construct+0x1>
 ac3:	48 8d 3d 56 15 20 00 	lea    0x201556(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
 aca:	e8 51 fd ff ff       	callq  820 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
 acf:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%rbp)
 ad6:	83 7d 8c 07          	cmpl   $0x7,-0x74(%rbp)
 ada:	7f 38                	jg     b14 <main+0x19a>
 adc:	8b 45 8c             	mov    -0x74(%rbp),%eax
 adf:	48 98                	cltq   
 ae1:	8b 44 85 d0          	mov    -0x30(%rbp,%rax,4),%eax
 ae5:	89 85 7c ff ff ff    	mov    %eax,-0x84(%rbp)
 aeb:	f3 0f 10 85 7c ff ff 	movss  -0x84(%rbp),%xmm0
 af2:	ff 
 af3:	48 8d 3d 26 15 20 00 	lea    0x201526(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
 afa:	e8 01 fd ff ff       	callq  800 <_ZNSolsEf@plt>
 aff:	48 8d 35 38 01 00 00 	lea    0x138(%rip),%rsi        # c3e <_ZStL19piecewise_construct+0xa>
 b06:	48 89 c7             	mov    %rax,%rdi
 b09:	e8 12 fd ff ff       	callq  820 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
 b0e:	83 45 8c 01          	addl   $0x1,-0x74(%rbp)
 b12:	eb c2                	jmp    ad6 <main+0x15c>
 b14:	48 8b 05 b5 14 20 00 	mov    0x2014b5(%rip),%rax        # 201fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
 b1b:	48 89 c6             	mov    %rax,%rsi
 b1e:	48 8d 3d fb 14 20 00 	lea    0x2014fb(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
 b25:	e8 06 fd ff ff       	callq  830 <_ZNSolsEPFRSoS_E@plt>
 b2a:	b8 00 00 00 00       	mov    $0x0,%eax
 b2f:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
 b33:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
 b3a:	00 00 
 b3c:	74 05                	je     b43 <main+0x1c9>
 b3e:	e8 fd fc ff ff       	callq  840 <__stack_chk_fail@plt>
 b43:	c9                   	leaveq 
 b44:	c3                   	retq   

0000000000000b45 <_Z41__static_initialization_and_destruction_0ii>:
 b45:	55                   	push   %rbp
 b46:	48 89 e5             	mov    %rsp,%rbp
 b49:	48 83 ec 10          	sub    $0x10,%rsp
 b4d:	89 7d fc             	mov    %edi,-0x4(%rbp)
 b50:	89 75 f8             	mov    %esi,-0x8(%rbp)
 b53:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
 b57:	75 32                	jne    b8b <_Z41__static_initialization_and_destruction_0ii+0x46>
 b59:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
 b60:	75 29                	jne    b8b <_Z41__static_initialization_and_destruction_0ii+0x46>
 b62:	48 8d 3d c8 15 20 00 	lea    0x2015c8(%rip),%rdi        # 202131 <_ZStL8__ioinit>
 b69:	e8 e2 fc ff ff       	callq  850 <_ZNSt8ios_base4InitC1Ev@plt>
 b6e:	48 8d 15 93 14 20 00 	lea    0x201493(%rip),%rdx        # 202008 <__dso_handle>
 b75:	48 8d 35 b5 15 20 00 	lea    0x2015b5(%rip),%rsi        # 202131 <_ZStL8__ioinit>
 b7c:	48 8b 05 75 14 20 00 	mov    0x201475(%rip),%rax        # 201ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
 b83:	48 89 c7             	mov    %rax,%rdi
 b86:	e8 85 fc ff ff       	callq  810 <__cxa_atexit@plt>
 b8b:	90                   	nop
 b8c:	c9                   	leaveq 
 b8d:	c3                   	retq   

0000000000000b8e <_GLOBAL__sub_I_main>:
 b8e:	55                   	push   %rbp
 b8f:	48 89 e5             	mov    %rsp,%rbp
 b92:	be ff ff 00 00       	mov    $0xffff,%esi
 b97:	bf 01 00 00 00       	mov    $0x1,%edi
 b9c:	e8 a4 ff ff ff       	callq  b45 <_Z41__static_initialization_and_destruction_0ii>
 ba1:	5d                   	pop    %rbp
 ba2:	c3                   	retq   
 ba3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 baa:	00 00 00 
 bad:	0f 1f 00             	nopl   (%rax)

0000000000000bb0 <__libc_csu_init>:
 bb0:	41 57                	push   %r15
 bb2:	41 56                	push   %r14
 bb4:	49 89 d7             	mov    %rdx,%r15
 bb7:	41 55                	push   %r13
 bb9:	41 54                	push   %r12
 bbb:	4c 8d 25 a6 11 20 00 	lea    0x2011a6(%rip),%r12        # 201d68 <__frame_dummy_init_array_entry>
 bc2:	55                   	push   %rbp
 bc3:	48 8d 2d ae 11 20 00 	lea    0x2011ae(%rip),%rbp        # 201d78 <__init_array_end>
 bca:	53                   	push   %rbx
 bcb:	41 89 fd             	mov    %edi,%r13d
 bce:	49 89 f6             	mov    %rsi,%r14
 bd1:	4c 29 e5             	sub    %r12,%rbp
 bd4:	48 83 ec 08          	sub    $0x8,%rsp
 bd8:	48 c1 fd 03          	sar    $0x3,%rbp
 bdc:	e8 ef fb ff ff       	callq  7d0 <_init>
 be1:	48 85 ed             	test   %rbp,%rbp
 be4:	74 20                	je     c06 <__libc_csu_init+0x56>
 be6:	31 db                	xor    %ebx,%ebx
 be8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 bef:	00 
 bf0:	4c 89 fa             	mov    %r15,%rdx
 bf3:	4c 89 f6             	mov    %r14,%rsi
 bf6:	44 89 ef             	mov    %r13d,%edi
 bf9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 bfd:	48 83 c3 01          	add    $0x1,%rbx
 c01:	48 39 dd             	cmp    %rbx,%rbp
 c04:	75 ea                	jne    bf0 <__libc_csu_init+0x40>
 c06:	48 83 c4 08          	add    $0x8,%rsp
 c0a:	5b                   	pop    %rbx
 c0b:	5d                   	pop    %rbp
 c0c:	41 5c                	pop    %r12
 c0e:	41 5d                	pop    %r13
 c10:	41 5e                	pop    %r14
 c12:	41 5f                	pop    %r15
 c14:	c3                   	retq   
 c15:	90                   	nop
 c16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 c1d:	00 00 00 

0000000000000c20 <__libc_csu_fini>:
 c20:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000c24 <_fini>:
 c24:	48 83 ec 08          	sub    $0x8,%rsp
 c28:	48 83 c4 08          	add    $0x8,%rsp
 c2c:	c3                   	retq   
