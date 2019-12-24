
hello_avx:     file format elf64-x86-64


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
 87f:	4c 8d 05 aa 04 00 00 	lea    0x4aa(%rip),%r8        # d30 <__libc_csu_fini>
 886:	48 8d 0d 33 04 00 00 	lea    0x433(%rip),%rcx        # cc0 <__libc_csu_init>
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
 97a:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
 97f:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
 983:	41 ff 72 f8          	pushq  -0x8(%r10)
 987:	55                   	push   %rbp
 988:	48 89 e5             	mov    %rsp,%rbp
 98b:	41 52                	push   %r10
 98d:	48 81 ec 28 01 00 00 	sub    $0x128,%rsp
 994:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 99b:	00 00 
 99d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 9a1:	31 c0                	xor    %eax,%eax
 9a3:	c5 fa 10 05 a5 03 00 	vmovss 0x3a5(%rip),%xmm0        # d50 <_ZStL19piecewise_construct+0xc>
 9aa:	00 
 9ab:	c5 fa 11 85 08 ff ff 	vmovss %xmm0,-0xf8(%rbp)
 9b2:	ff 
 9b3:	c5 fa 10 05 99 03 00 	vmovss 0x399(%rip),%xmm0        # d54 <_ZStL19piecewise_construct+0x10>
 9ba:	00 
 9bb:	c5 fa 11 85 0c ff ff 	vmovss %xmm0,-0xf4(%rbp)
 9c2:	ff 
 9c3:	c5 fa 10 05 8d 03 00 	vmovss 0x38d(%rip),%xmm0        # d58 <_ZStL19piecewise_construct+0x14>
 9ca:	00 
 9cb:	c5 fa 11 85 10 ff ff 	vmovss %xmm0,-0xf0(%rbp)
 9d2:	ff 
 9d3:	c5 fa 10 05 81 03 00 	vmovss 0x381(%rip),%xmm0        # d5c <_ZStL19piecewise_construct+0x18>
 9da:	00 
 9db:	c5 fa 11 85 14 ff ff 	vmovss %xmm0,-0xec(%rbp)
 9e2:	ff 
 9e3:	c5 fa 10 05 75 03 00 	vmovss 0x375(%rip),%xmm0        # d60 <_ZStL19piecewise_construct+0x1c>
 9ea:	00 
 9eb:	c5 fa 11 85 18 ff ff 	vmovss %xmm0,-0xe8(%rbp)
 9f2:	ff 
 9f3:	c5 fa 10 05 69 03 00 	vmovss 0x369(%rip),%xmm0        # d64 <_ZStL19piecewise_construct+0x20>
 9fa:	00 
 9fb:	c5 fa 11 85 1c ff ff 	vmovss %xmm0,-0xe4(%rbp)
 a02:	ff 
 a03:	c5 fa 10 05 5d 03 00 	vmovss 0x35d(%rip),%xmm0        # d68 <_ZStL19piecewise_construct+0x24>
 a0a:	00 
 a0b:	c5 fa 11 85 20 ff ff 	vmovss %xmm0,-0xe0(%rbp)
 a12:	ff 
 a13:	c5 fa 10 05 51 03 00 	vmovss 0x351(%rip),%xmm0        # d6c <_ZStL19piecewise_construct+0x28>
 a1a:	00 
 a1b:	c5 fa 11 85 24 ff ff 	vmovss %xmm0,-0xdc(%rbp)
 a22:	ff 
 a23:	c5 fa 10 8d 08 ff ff 	vmovss -0xf8(%rbp),%xmm1
 a2a:	ff 
 a2b:	c5 fa 10 85 0c ff ff 	vmovss -0xf4(%rbp),%xmm0
 a32:	ff 
 a33:	c5 f8 14 d1          	vunpcklps %xmm1,%xmm0,%xmm2
 a37:	c5 fa 10 8d 10 ff ff 	vmovss -0xf0(%rbp),%xmm1
 a3e:	ff 
 a3f:	c5 fa 10 85 14 ff ff 	vmovss -0xec(%rbp),%xmm0
 a46:	ff 
 a47:	c5 f8 14 c9          	vunpcklps %xmm1,%xmm0,%xmm1
 a4b:	c5 fa 10 9d 18 ff ff 	vmovss -0xe8(%rbp),%xmm3
 a52:	ff 
 a53:	c5 fa 10 85 1c ff ff 	vmovss -0xe4(%rbp),%xmm0
 a5a:	ff 
 a5b:	c5 f8 14 db          	vunpcklps %xmm3,%xmm0,%xmm3
 a5f:	c5 fa 10 a5 20 ff ff 	vmovss -0xe0(%rbp),%xmm4
 a66:	ff 
 a67:	c5 fa 10 85 24 ff ff 	vmovss -0xdc(%rbp),%xmm0
 a6e:	ff 
 a6f:	c5 f8 14 c4          	vunpcklps %xmm4,%xmm0,%xmm0
 a73:	c5 f8 16 c3          	vmovlhps %xmm3,%xmm0,%xmm0
 a77:	c5 f0 16 ca          	vmovlhps %xmm2,%xmm1,%xmm1
 a7b:	c4 e3 7d 18 c1 01    	vinsertf128 $0x1,%xmm1,%ymm0,%ymm0
 a81:	c5 fc 29 85 50 ff ff 	vmovaps %ymm0,-0xb0(%rbp)
 a88:	ff 
 a89:	c5 fa 10 05 df 02 00 	vmovss 0x2df(%rip),%xmm0        # d70 <_ZStL19piecewise_construct+0x2c>
 a90:	00 
 a91:	c5 fa 11 85 e8 fe ff 	vmovss %xmm0,-0x118(%rbp)
 a98:	ff 
 a99:	c5 fa 10 05 d3 02 00 	vmovss 0x2d3(%rip),%xmm0        # d74 <_ZStL19piecewise_construct+0x30>
 aa0:	00 
 aa1:	c5 fa 11 85 ec fe ff 	vmovss %xmm0,-0x114(%rbp)
 aa8:	ff 
 aa9:	c5 fa 10 05 c7 02 00 	vmovss 0x2c7(%rip),%xmm0        # d78 <_ZStL19piecewise_construct+0x34>
 ab0:	00 
 ab1:	c5 fa 11 85 f0 fe ff 	vmovss %xmm0,-0x110(%rbp)
 ab8:	ff 
 ab9:	c5 fa 10 05 bb 02 00 	vmovss 0x2bb(%rip),%xmm0        # d7c <_ZStL19piecewise_construct+0x38>
 ac0:	00 
 ac1:	c5 fa 11 85 f4 fe ff 	vmovss %xmm0,-0x10c(%rbp)
 ac8:	ff 
 ac9:	c5 fa 10 05 af 02 00 	vmovss 0x2af(%rip),%xmm0        # d80 <_ZStL19piecewise_construct+0x3c>
 ad0:	00 
 ad1:	c5 fa 11 85 f8 fe ff 	vmovss %xmm0,-0x108(%rbp)
 ad8:	ff 
 ad9:	c5 fa 10 05 a3 02 00 	vmovss 0x2a3(%rip),%xmm0        # d84 <_ZStL19piecewise_construct+0x40>
 ae0:	00 
 ae1:	c5 fa 11 85 fc fe ff 	vmovss %xmm0,-0x104(%rbp)
 ae8:	ff 
 ae9:	c5 fa 10 05 97 02 00 	vmovss 0x297(%rip),%xmm0        # d88 <_ZStL19piecewise_construct+0x44>
 af0:	00 
 af1:	c5 fa 11 85 00 ff ff 	vmovss %xmm0,-0x100(%rbp)
 af8:	ff 
 af9:	c5 fa 10 05 8b 02 00 	vmovss 0x28b(%rip),%xmm0        # d8c <_ZStL19piecewise_construct+0x48>
 b00:	00 
 b01:	c5 fa 11 85 04 ff ff 	vmovss %xmm0,-0xfc(%rbp)
 b08:	ff 
 b09:	c5 fa 10 8d e8 fe ff 	vmovss -0x118(%rbp),%xmm1
 b10:	ff 
 b11:	c5 fa 10 85 ec fe ff 	vmovss -0x114(%rbp),%xmm0
 b18:	ff 
 b19:	c5 f8 14 d1          	vunpcklps %xmm1,%xmm0,%xmm2
 b1d:	c5 fa 10 8d f0 fe ff 	vmovss -0x110(%rbp),%xmm1
 b24:	ff 
 b25:	c5 fa 10 85 f4 fe ff 	vmovss -0x10c(%rbp),%xmm0
 b2c:	ff 
 b2d:	c5 f8 14 c9          	vunpcklps %xmm1,%xmm0,%xmm1
 b31:	c5 fa 10 9d f8 fe ff 	vmovss -0x108(%rbp),%xmm3
 b38:	ff 
 b39:	c5 fa 10 85 fc fe ff 	vmovss -0x104(%rbp),%xmm0
 b40:	ff 
 b41:	c5 f8 14 db          	vunpcklps %xmm3,%xmm0,%xmm3
 b45:	c5 fa 10 a5 00 ff ff 	vmovss -0x100(%rbp),%xmm4
 b4c:	ff 
 b4d:	c5 fa 10 85 04 ff ff 	vmovss -0xfc(%rbp),%xmm0
 b54:	ff 
 b55:	c5 f8 14 c4          	vunpcklps %xmm4,%xmm0,%xmm0
 b59:	c5 f8 16 c3          	vmovlhps %xmm3,%xmm0,%xmm0
 b5d:	c5 f0 16 ca          	vmovlhps %xmm2,%xmm1,%xmm1
 b61:	c4 e3 7d 18 c1 01    	vinsertf128 $0x1,%xmm1,%ymm0,%ymm0
 b67:	c5 fc 29 85 70 ff ff 	vmovaps %ymm0,-0x90(%rbp)
 b6e:	ff 
 b6f:	c5 fc 28 85 50 ff ff 	vmovaps -0xb0(%rbp),%ymm0
 b76:	ff 
 b77:	c5 fc 29 45 90       	vmovaps %ymm0,-0x70(%rbp)
 b7c:	c5 fc 28 85 70 ff ff 	vmovaps -0x90(%rbp),%ymm0
 b83:	ff 
 b84:	c5 fc 29 45 b0       	vmovaps %ymm0,-0x50(%rbp)
 b89:	c5 fc 28 45 90       	vmovaps -0x70(%rbp),%ymm0
 b8e:	c5 fc 5c 45 b0       	vsubps -0x50(%rbp),%ymm0,%ymm0
 b93:	c5 fc 29 85 30 ff ff 	vmovaps %ymm0,-0xd0(%rbp)
 b9a:	ff 
 b9b:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
 ba2:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
 ba9:	48 8d 35 95 01 00 00 	lea    0x195(%rip),%rsi        # d45 <_ZStL19piecewise_construct+0x1>
 bb0:	48 8d 3d 69 14 20 00 	lea    0x201469(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
 bb7:	e8 64 fc ff ff       	callq  820 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
 bbc:	c7 85 e4 fe ff ff 00 	movl   $0x0,-0x11c(%rbp)
 bc3:	00 00 00 
 bc6:	83 bd e4 fe ff ff 07 	cmpl   $0x7,-0x11c(%rbp)
 bcd:	7f 4e                	jg     c1d <main+0x2a3>
 bcf:	8b 85 e4 fe ff ff    	mov    -0x11c(%rbp),%eax
 bd5:	48 98                	cltq   
 bd7:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 bde:	00 
 bdf:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
 be6:	48 01 d0             	add    %rdx,%rax
 be9:	8b 00                	mov    (%rax),%eax
 beb:	89 85 dc fe ff ff    	mov    %eax,-0x124(%rbp)
 bf1:	c5 fa 10 85 dc fe ff 	vmovss -0x124(%rbp),%xmm0
 bf8:	ff 
 bf9:	48 8d 3d 20 14 20 00 	lea    0x201420(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
 c00:	e8 fb fb ff ff       	callq  800 <_ZNSolsEf@plt>
 c05:	48 8d 35 42 01 00 00 	lea    0x142(%rip),%rsi        # d4e <_ZStL19piecewise_construct+0xa>
 c0c:	48 89 c7             	mov    %rax,%rdi
 c0f:	e8 0c fc ff ff       	callq  820 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
 c14:	83 85 e4 fe ff ff 01 	addl   $0x1,-0x11c(%rbp)
 c1b:	eb a9                	jmp    bc6 <main+0x24c>
 c1d:	48 8b 05 ac 13 20 00 	mov    0x2013ac(%rip),%rax        # 201fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
 c24:	48 89 c6             	mov    %rax,%rsi
 c27:	48 8d 3d f2 13 20 00 	lea    0x2013f2(%rip),%rdi        # 202020 <_ZSt4cout@@GLIBCXX_3.4>
 c2e:	e8 fd fb ff ff       	callq  830 <_ZNSolsEPFRSoS_E@plt>
 c33:	b8 00 00 00 00       	mov    $0x0,%eax
 c38:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
 c3c:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 c43:	00 00 
 c45:	74 05                	je     c4c <main+0x2d2>
 c47:	e8 f4 fb ff ff       	callq  840 <__stack_chk_fail@plt>
 c4c:	48 81 c4 28 01 00 00 	add    $0x128,%rsp
 c53:	41 5a                	pop    %r10
 c55:	5d                   	pop    %rbp
 c56:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
 c5a:	c3                   	retq   

0000000000000c5b <_Z41__static_initialization_and_destruction_0ii>:
 c5b:	55                   	push   %rbp
 c5c:	48 89 e5             	mov    %rsp,%rbp
 c5f:	48 83 ec 10          	sub    $0x10,%rsp
 c63:	89 7d fc             	mov    %edi,-0x4(%rbp)
 c66:	89 75 f8             	mov    %esi,-0x8(%rbp)
 c69:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
 c6d:	75 32                	jne    ca1 <_Z41__static_initialization_and_destruction_0ii+0x46>
 c6f:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
 c76:	75 29                	jne    ca1 <_Z41__static_initialization_and_destruction_0ii+0x46>
 c78:	48 8d 3d b2 14 20 00 	lea    0x2014b2(%rip),%rdi        # 202131 <_ZStL8__ioinit>
 c7f:	e8 cc fb ff ff       	callq  850 <_ZNSt8ios_base4InitC1Ev@plt>
 c84:	48 8d 15 7d 13 20 00 	lea    0x20137d(%rip),%rdx        # 202008 <__dso_handle>
 c8b:	48 8d 35 9f 14 20 00 	lea    0x20149f(%rip),%rsi        # 202131 <_ZStL8__ioinit>
 c92:	48 8b 05 5f 13 20 00 	mov    0x20135f(%rip),%rax        # 201ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
 c99:	48 89 c7             	mov    %rax,%rdi
 c9c:	e8 6f fb ff ff       	callq  810 <__cxa_atexit@plt>
 ca1:	90                   	nop
 ca2:	c9                   	leaveq 
 ca3:	c3                   	retq   

0000000000000ca4 <_GLOBAL__sub_I_main>:
 ca4:	55                   	push   %rbp
 ca5:	48 89 e5             	mov    %rsp,%rbp
 ca8:	be ff ff 00 00       	mov    $0xffff,%esi
 cad:	bf 01 00 00 00       	mov    $0x1,%edi
 cb2:	e8 a4 ff ff ff       	callq  c5b <_Z41__static_initialization_and_destruction_0ii>
 cb7:	5d                   	pop    %rbp
 cb8:	c3                   	retq   
 cb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000000cc0 <__libc_csu_init>:
 cc0:	41 57                	push   %r15
 cc2:	41 56                	push   %r14
 cc4:	49 89 d7             	mov    %rdx,%r15
 cc7:	41 55                	push   %r13
 cc9:	41 54                	push   %r12
 ccb:	4c 8d 25 96 10 20 00 	lea    0x201096(%rip),%r12        # 201d68 <__frame_dummy_init_array_entry>
 cd2:	55                   	push   %rbp
 cd3:	48 8d 2d 9e 10 20 00 	lea    0x20109e(%rip),%rbp        # 201d78 <__init_array_end>
 cda:	53                   	push   %rbx
 cdb:	41 89 fd             	mov    %edi,%r13d
 cde:	49 89 f6             	mov    %rsi,%r14
 ce1:	4c 29 e5             	sub    %r12,%rbp
 ce4:	48 83 ec 08          	sub    $0x8,%rsp
 ce8:	48 c1 fd 03          	sar    $0x3,%rbp
 cec:	e8 df fa ff ff       	callq  7d0 <_init>
 cf1:	48 85 ed             	test   %rbp,%rbp
 cf4:	74 20                	je     d16 <__libc_csu_init+0x56>
 cf6:	31 db                	xor    %ebx,%ebx
 cf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 cff:	00 
 d00:	4c 89 fa             	mov    %r15,%rdx
 d03:	4c 89 f6             	mov    %r14,%rsi
 d06:	44 89 ef             	mov    %r13d,%edi
 d09:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 d0d:	48 83 c3 01          	add    $0x1,%rbx
 d11:	48 39 dd             	cmp    %rbx,%rbp
 d14:	75 ea                	jne    d00 <__libc_csu_init+0x40>
 d16:	48 83 c4 08          	add    $0x8,%rsp
 d1a:	5b                   	pop    %rbx
 d1b:	5d                   	pop    %rbp
 d1c:	41 5c                	pop    %r12
 d1e:	41 5d                	pop    %r13
 d20:	41 5e                	pop    %r14
 d22:	41 5f                	pop    %r15
 d24:	c3                   	retq   
 d25:	90                   	nop
 d26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 d2d:	00 00 00 

0000000000000d30 <__libc_csu_fini>:
 d30:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000d34 <_fini>:
 d34:	48 83 ec 08          	sub    $0x8,%rsp
 d38:	48 83 c4 08          	add    $0x8,%rsp
 d3c:	c3                   	retq   
