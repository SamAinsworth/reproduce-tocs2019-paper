	.text
	.file	"is-nobounds.ll"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_0:
	.quad	4503599627370496000     # double 1.1920928955078125E-7
.LCPI0_1:
	.quad	4710765210229538816     # double 8388608
.LCPI0_2:
	.quad	4400016835940974592     # double 1.4210854715202004E-14
.LCPI0_3:
	.quad	4814348001659060224     # double 70368744177664
	.text
	.globl	randlc
	.p2align	4, 0x90
	.type	randlc,@function
randlc:                                 # @randlc
	.cfi_startproc
# BB#0:
	cmpb	$1, randlc.KS(%rip)
	jne	.LBB0_2
# BB#1:
	movsd	randlc.R23(%rip), %xmm4 # xmm4 = mem[0],zero
	movsd	randlc.T23(%rip), %xmm2 # xmm2 = mem[0],zero
	movsd	randlc.R46(%rip), %xmm1 # xmm1 = mem[0],zero
	movsd	randlc.T46(%rip), %xmm8 # xmm8 = mem[0],zero
	jmp	.LBB0_3
.LBB0_2:
	movabsq	$4503599627370496000, %rax # imm = 0x3E80000000000000
	movq	%rax, randlc.R23(%rip)
	movabsq	$4710765210229538816, %rax # imm = 0x4160000000000000
	movq	%rax, randlc.T23(%rip)
	movabsq	$4400016835940974592, %rax # imm = 0x3D10000000000000
	movq	%rax, randlc.R46(%rip)
	movabsq	$4814348001659060224, %rax # imm = 0x42D0000000000000
	movq	%rax, randlc.T46(%rip)
	movb	$1, randlc.KS(%rip)
	movsd	.LCPI0_0(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm8   # xmm8 = mem[0],zero
.LBB0_3:
	movsd	(%rsi), %xmm5           # xmm5 = mem[0],zero
	movapd	%xmm4, %xmm0
	mulsd	%xmm5, %xmm0
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm6
	movapd	%xmm2, %xmm0
	mulsd	%xmm6, %xmm0
	subsd	%xmm0, %xmm5
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movapd	%xmm4, %xmm7
	mulsd	%xmm0, %xmm7
	cvttsd2si	%xmm7, %eax
	xorps	%xmm7, %xmm7
	cvtsi2sdl	%eax, %xmm7
	movapd	%xmm2, %xmm3
	mulsd	%xmm7, %xmm3
	subsd	%xmm3, %xmm0
	mulsd	%xmm0, %xmm6
	mulsd	%xmm5, %xmm7
	addsd	%xmm6, %xmm7
	mulsd	%xmm7, %xmm4
	cvttsd2si	%xmm4, %eax
	xorps	%xmm3, %xmm3
	cvtsi2sdl	%eax, %xmm3
	mulsd	%xmm2, %xmm3
	subsd	%xmm3, %xmm7
	mulsd	%xmm2, %xmm7
	mulsd	%xmm5, %xmm0
	addsd	%xmm7, %xmm0
	movapd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm8, %xmm2
	subsd	%xmm2, %xmm0
	movsd	%xmm0, (%rdi)
	mulsd	%xmm1, %xmm0
	retq
.Lfunc_end0:
	.size	randlc, .Lfunc_end0-randlc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI1_0:
	.quad	4503599627370496000     # double 1.1920928955078125E-7
.LCPI1_1:
	.quad	4710765210229538816     # double 8388608
.LCPI1_2:
	.quad	4400016835940974592     # double 1.4210854715202004E-14
.LCPI1_3:
	.quad	4814348001659060224     # double 70368744177664
.LCPI1_4:
	.quad	4692750811720056832     # double 524288
	.text
	.globl	create_seq
	.p2align	4, 0x90
	.type	create_seq,@function
create_seq:                             # @create_seq
	.cfi_startproc
# BB#0:
	movb	randlc.KS(%rip), %cl
	xorl	%eax, %eax
	movsd	.LCPI1_4(%rip), %xmm12  # xmm12 = mem[0],zero
	movabsq	$4503599627370496000, %r8 # imm = 0x3E80000000000000
	movabsq	$4710765210229538816, %rdx # imm = 0x4160000000000000
	movabsq	$4400016835940974592, %rsi # imm = 0x3D10000000000000
	movabsq	$4814348001659060224, %rdi # imm = 0x42D0000000000000
	movsd	.LCPI1_0(%rip), %xmm8   # xmm8 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm9   # xmm9 = mem[0],zero
	movsd	.LCPI1_2(%rip), %xmm10  # xmm10 = mem[0],zero
	movsd	.LCPI1_3(%rip), %xmm11  # xmm11 = mem[0],zero
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	testb	$1, %cl
	je	.LBB1_3
# BB#2:                                 #   in Loop: Header=BB1_1 Depth=1
	movsd	randlc.R23(%rip), %xmm15 # xmm15 = mem[0],zero
	movsd	randlc.T23(%rip), %xmm5 # xmm5 = mem[0],zero
	movsd	randlc.R46(%rip), %xmm2 # xmm2 = mem[0],zero
	movsd	randlc.T46(%rip), %xmm13 # xmm13 = mem[0],zero
	jmp	.LBB1_4
	.p2align	4, 0x90
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	movq	%r8, randlc.R23(%rip)
	movq	%rdx, randlc.T23(%rip)
	movq	%rsi, randlc.R46(%rip)
	movq	%rdi, randlc.T46(%rip)
	movb	$1, randlc.KS(%rip)
	movapd	%xmm11, %xmm13
	movapd	%xmm10, %xmm2
	movapd	%xmm9, %xmm5
	movapd	%xmm8, %xmm15
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	movapd	%xmm15, %xmm3
	mulsd	%xmm1, %xmm3
	cvttsd2si	%xmm3, %ecx
	cvtsi2sdl	%ecx, %xmm14
	movapd	%xmm5, %xmm6
	mulsd	%xmm14, %xmm6
	movapd	%xmm1, %xmm3
	subsd	%xmm6, %xmm3
	movapd	%xmm0, %xmm6
	mulsd	%xmm15, %xmm6
	cvttsd2si	%xmm6, %ecx
	xorps	%xmm6, %xmm6
	cvtsi2sdl	%ecx, %xmm6
	movapd	%xmm5, %xmm7
	mulsd	%xmm6, %xmm7
	subsd	%xmm7, %xmm0
	movapd	%xmm14, %xmm7
	mulsd	%xmm0, %xmm7
	mulsd	%xmm3, %xmm6
	addsd	%xmm7, %xmm6
	movapd	%xmm15, %xmm7
	mulsd	%xmm6, %xmm7
	cvttsd2si	%xmm7, %ecx
	xorps	%xmm7, %xmm7
	cvtsi2sdl	%ecx, %xmm7
	mulsd	%xmm5, %xmm7
	subsd	%xmm7, %xmm6
	mulsd	%xmm5, %xmm6
	mulsd	%xmm3, %xmm0
	addsd	%xmm6, %xmm0
	movapd	%xmm2, %xmm6
	mulsd	%xmm0, %xmm6
	cvttsd2si	%xmm6, %ecx
	xorps	%xmm6, %xmm6
	cvtsi2sdl	%ecx, %xmm6
	mulsd	%xmm13, %xmm6
	subsd	%xmm6, %xmm0
	movapd	%xmm2, %xmm6
	mulsd	%xmm0, %xmm6
	movapd	%xmm15, %xmm7
	mulsd	%xmm0, %xmm7
	cvttsd2si	%xmm7, %ecx
	xorps	%xmm7, %xmm7
	cvtsi2sdl	%ecx, %xmm7
	movapd	%xmm5, %xmm4
	mulsd	%xmm7, %xmm4
	subsd	%xmm4, %xmm0
	movapd	%xmm14, %xmm4
	mulsd	%xmm0, %xmm4
	mulsd	%xmm3, %xmm7
	addsd	%xmm4, %xmm7
	movapd	%xmm15, %xmm4
	mulsd	%xmm7, %xmm4
	cvttsd2si	%xmm4, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%ecx, %xmm4
	mulsd	%xmm5, %xmm4
	subsd	%xmm4, %xmm7
	mulsd	%xmm5, %xmm7
	mulsd	%xmm3, %xmm0
	addsd	%xmm7, %xmm0
	movapd	%xmm2, %xmm4
	mulsd	%xmm0, %xmm4
	cvttsd2si	%xmm4, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%ecx, %xmm4
	mulsd	%xmm13, %xmm4
	subsd	%xmm4, %xmm0
	movapd	%xmm2, %xmm7
	mulsd	%xmm0, %xmm7
	addsd	%xmm6, %xmm7
	movapd	%xmm15, %xmm4
	mulsd	%xmm0, %xmm4
	cvttsd2si	%xmm4, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%ecx, %xmm4
	movapd	%xmm5, %xmm6
	mulsd	%xmm4, %xmm6
	subsd	%xmm6, %xmm0
	movapd	%xmm14, %xmm6
	mulsd	%xmm0, %xmm6
	mulsd	%xmm3, %xmm4
	addsd	%xmm6, %xmm4
	movapd	%xmm15, %xmm6
	mulsd	%xmm4, %xmm6
	cvttsd2si	%xmm6, %ecx
	xorps	%xmm6, %xmm6
	cvtsi2sdl	%ecx, %xmm6
	mulsd	%xmm5, %xmm6
	subsd	%xmm6, %xmm4
	mulsd	%xmm5, %xmm4
	mulsd	%xmm3, %xmm0
	addsd	%xmm4, %xmm0
	movapd	%xmm2, %xmm4
	mulsd	%xmm0, %xmm4
	cvttsd2si	%xmm4, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%ecx, %xmm4
	mulsd	%xmm13, %xmm4
	subsd	%xmm4, %xmm0
	movapd	%xmm2, %xmm6
	mulsd	%xmm0, %xmm6
	addsd	%xmm7, %xmm6
	movapd	%xmm15, %xmm4
	mulsd	%xmm0, %xmm4
	cvttsd2si	%xmm4, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%ecx, %xmm4
	movapd	%xmm5, %xmm7
	mulsd	%xmm4, %xmm7
	subsd	%xmm7, %xmm0
	mulsd	%xmm0, %xmm14
	mulsd	%xmm3, %xmm4
	addsd	%xmm14, %xmm4
	mulsd	%xmm4, %xmm15
	cvttsd2si	%xmm15, %ecx
	xorps	%xmm7, %xmm7
	cvtsi2sdl	%ecx, %xmm7
	mulsd	%xmm5, %xmm7
	subsd	%xmm7, %xmm4
	mulsd	%xmm5, %xmm4
	mulsd	%xmm3, %xmm0
	addsd	%xmm4, %xmm0
	movapd	%xmm2, %xmm3
	mulsd	%xmm0, %xmm3
	cvttsd2si	%xmm3, %ecx
	xorps	%xmm3, %xmm3
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm13, %xmm3
	subsd	%xmm3, %xmm0
	mulsd	%xmm0, %xmm2
	addsd	%xmm6, %xmm2
	mulsd	%xmm12, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, key_array(%rax)
	addq	$4, %rax
	movb	$1, %cl
	cmpq	$134217728, %rax        # imm = 0x8000000
	jne	.LBB1_1
# BB#5:
	retq
.Lfunc_end1:
	.size	create_seq, .Lfunc_end1-create_seq
	.cfi_endproc

	.globl	full_verify
	.p2align	4, 0x90
	.type	full_verify,@function
full_verify:                            # @full_verify
	.cfi_startproc
# BB#0:
	movq	key_buff_ptr_global(%rip), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movslq	key_buff2(%rcx), %rdx
	movslq	key_buff2+128(%rcx), %r8
	movslq	(%rax,%rdx,4), %rdi
	leaq	-1(%rdi), %rsi
	movl	%esi, (%rax,%rdx,4)
	movl	%edx, key_array-4(,%rdi,4)
	prefetcht0	key_buff2+256(%rcx)
	prefetcht0	(%rax,%r8,4)
	addq	$4, %rcx
	cmpq	$134217728, %rcx        # imm = 0x8000000
	jne	.LBB2_1
# BB#2:
	movd	key_array(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	pshufd	$36, %xmm0, %xmm1       # xmm1 = xmm0[0,1,2,0]
	movups	key_array+4(%rip), %xmm0
	movups	key_array+20(%rip), %xmm2
	shufps	$3, %xmm0, %xmm1        # xmm1 = xmm1[3,0],xmm0[0,0]
	shufps	$152, %xmm0, %xmm1      # xmm1 = xmm1[0,2],xmm0[1,2]
	pcmpgtd	%xmm0, %xmm1
	shufps	$3, %xmm2, %xmm0        # xmm0 = xmm0[3,0],xmm2[0,0]
	shufps	$152, %xmm2, %xmm0      # xmm0 = xmm0[0,2],xmm2[1,2]
	psrld	$31, %xmm1
	pcmpgtd	%xmm2, %xmm0
	psrld	$31, %xmm0
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	movups	key_array+36(%rax), %xmm3
	shufps	$3, %xmm3, %xmm2        # xmm2 = xmm2[3,0],xmm3[0,0]
	shufps	$152, %xmm3, %xmm2      # xmm2 = xmm2[0,2],xmm3[1,2]
	pcmpgtd	%xmm3, %xmm2
	psrld	$31, %xmm2
	paddd	%xmm1, %xmm2
	movups	key_array+52(%rax), %xmm1
	shufps	$3, %xmm1, %xmm3        # xmm3 = xmm3[3,0],xmm1[0,0]
	shufps	$152, %xmm1, %xmm3      # xmm3 = xmm3[0,2],xmm1[1,2]
	pcmpgtd	%xmm1, %xmm3
	psrld	$31, %xmm3
	paddd	%xmm0, %xmm3
	movups	key_array+68(%rax), %xmm0
	shufps	$3, %xmm0, %xmm1        # xmm1 = xmm1[3,0],xmm0[0,0]
	shufps	$152, %xmm0, %xmm1      # xmm1 = xmm1[0,2],xmm0[1,2]
	pcmpgtd	%xmm0, %xmm1
	psrld	$31, %xmm1
	paddd	%xmm2, %xmm1
	movups	key_array+84(%rax), %xmm2
	shufps	$3, %xmm2, %xmm0        # xmm0 = xmm0[3,0],xmm2[0,0]
	shufps	$152, %xmm2, %xmm0      # xmm0 = xmm0[0,2],xmm2[1,2]
	pcmpgtd	%xmm2, %xmm0
	psrld	$31, %xmm0
	paddd	%xmm3, %xmm0
	addq	$64, %rax
	cmpq	$134217664, %rax        # imm = 0x7FFFFC0
	jne	.LBB2_3
# BB#4:
	paddd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm1
	pshufd	$231, %xmm2, %xmm0      # xmm0 = xmm2[3,1,2,3]
	movd	%xmm0, %eax
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %ecx
	movl	$134217700, %edx        # imm = 0x7FFFFE4
	movl	key_array(%rdx), %edx
	xorl	%esi, %esi
	cmpl	%edx, %eax
	setg	%sil
	addl	%ecx, %esi
	movl	$134217704, %eax        # imm = 0x7FFFFE8
	movq	key_array(%rax), %rax
	xorl	%ecx, %ecx
	cmpl	%eax, %edx
	setg	%cl
	addl	%esi, %ecx
	movq	%rax, %rdx
	shrq	$32, %rdx
	xorl	%esi, %esi
	cmpl	%edx, %eax
	setg	%sil
	addl	%ecx, %esi
	movl	$134217712, %eax        # imm = 0x7FFFFF0
	movq	key_array(%rax), %rax
	xorl	%ecx, %ecx
	cmpl	%eax, %edx
	setg	%cl
	addl	%esi, %ecx
	movq	%rax, %rdx
	shrq	$32, %rdx
	xorl	%esi, %esi
	cmpl	%edx, %eax
	setg	%sil
	addl	%ecx, %esi
	movl	$134217720, %eax        # imm = 0x7FFFFF8
	movq	key_array(%rax), %rax
	xorl	%ecx, %ecx
	cmpl	%eax, %edx
	setg	%cl
	addl	%esi, %ecx
	movq	%rax, %rdx
	shrq	$32, %rdx
	xorl	%esi, %esi
	cmpl	%edx, %eax
	setg	%sil
	addl	%ecx, %esi
	je	.LBB2_5
# BB#6:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	jmp	printf                  # TAILCALL
.LBB2_5:
	incl	passed_verification(%rip)
	retq
.Lfunc_end2:
	.size	full_verify, .Lfunc_end2-full_verify
	.cfi_endproc

	.globl	rank
	.p2align	4, 0x90
	.type	rank,@function
rank:                                   # @rank
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movl	%edi, %r14d
	movslq	%r14d, %rax
	movl	%eax, key_array(,%rax,4)
	movl	$2097152, %ecx          # imm = 0x200000
	subl	%eax, %ecx
	movl	%ecx, key_array+40(,%rax,4)
	movq	test_index_array(%rip), %rax
	movslq	%eax, %rcx
	movl	key_array(,%rcx,4), %ebp
	movl	%ebp, partial_verify_vals(%rip)
	sarq	$32, %rax
	movl	key_array(,%rax,4), %eax
	movl	%eax, partial_verify_vals+4(%rip)
	movq	test_index_array+8(%rip), %rax
	movslq	%eax, %rcx
	movl	key_array(,%rcx,4), %ecx
	movl	%ecx, partial_verify_vals+8(%rip)
	sarq	$32, %rax
	movl	key_array(,%rax,4), %eax
	movl	%eax, partial_verify_vals+12(%rip)
	movslq	test_index_array+16(%rip), %rax
	movl	key_array(,%rax,4), %eax
	movl	%eax, partial_verify_vals+16(%rip)
	movl	$key_buff2, %edi
	movl	$key_array, %esi
	movl	$134217728, %edx        # imm = 0x8000000
	callq	memcpy
	xorl	%ebx, %ebx
	movl	$key_buff1, %edi
	xorl	%esi, %esi
	movl	$8388608, %edx          # imm = 0x800000
	callq	memset
	.p2align	4, 0x90
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movslq	key_buff2(%rbx), %rax
	movslq	key_buff2+128(%rbx), %rcx
	incl	key_buff1(,%rax,4)
	prefetcht0	key_buff2+256(%rbx)
	prefetcht0	key_buff1(,%rcx,4)
	movslq	key_buff2+4(%rbx), %rax
	movslq	key_buff2+132(%rbx), %rcx
	incl	key_buff1(,%rax,4)
	prefetcht0	key_buff2+260(%rbx)
	prefetcht0	key_buff1(,%rcx,4)
	addq	$8, %rbx
	cmpq	$134217728, %rbx        # imm = 0x8000000
	jne	.LBB3_1
# BB#2:
	movq	key_buff1(%rip), %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	addl	%eax, %ecx
	movl	%ecx, key_buff1+4(%rip)
	movq	key_buff1+8(%rip), %rax
	addl	%eax, %ecx
	movl	%ecx, key_buff1+8(%rip)
	shrq	$32, %rax
	addl	%ecx, %eax
	movl	%eax, key_buff1+12(%rip)
	movq	$-8388592, %rcx         # imm = 0xFF800010
	.p2align	4, 0x90
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	addl	key_buff1+8388608(%rcx), %eax
	movl	%eax, key_buff1+8388608(%rcx)
	addl	key_buff1+8388612(%rcx), %eax
	movl	%eax, key_buff1+8388612(%rcx)
	addl	key_buff1+8388616(%rcx), %eax
	movl	%eax, key_buff1+8388616(%rcx)
	addl	key_buff1+8388620(%rcx), %eax
	movl	%eax, key_buff1+8388620(%rcx)
	addq	$16, %rcx
	jne	.LBB3_3
# BB#4:                                 # %.preheader.preheader
	movl	$22, %r15d
	xorl	%ebx, %ebx
	jmp	.LBB3_5
	.p2align	4, 0x90
.LBB3_14:                               #   in Loop: Header=BB3_5 Depth=1
	movl	partial_verify_vals+4(,%rbx,4), %ebp
	incq	%rbx
.LBB3_5:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$33554431, %ebp         # imm = 0x1FFFFFF
	ja	.LBB3_13
# BB#6:                                 #   in Loop: Header=BB3_5 Depth=1
	movslq	%ebp, %rax
	movl	key_buff1-4(,%rax,4), %eax
	movl	test_rank_array(,%rbx,4), %ecx
	cmpl	$4, %ebx
	ja	.LBB3_11
# BB#7:                                 #   in Loop: Header=BB3_5 Depth=1
	btl	%ebx, %r15d
	jae	.LBB3_11
# BB#8:                                 #   in Loop: Header=BB3_5 Depth=1
	addl	%r14d, %ecx
	jmp	.LBB3_9
.LBB3_11:                               #   in Loop: Header=BB3_5 Depth=1
	subl	%r14d, %ecx
.LBB3_9:                                #   in Loop: Header=BB3_5 Depth=1
	cmpl	%ecx, %eax
	jne	.LBB3_10
# BB#12:                                #   in Loop: Header=BB3_5 Depth=1
	incl	passed_verification(%rip)
	jmp	.LBB3_13
	.p2align	4, 0x90
.LBB3_10:                               #   in Loop: Header=BB3_5 Depth=1
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	movl	%r14d, %esi
	movl	%ebx, %edx
	callq	printf
.LBB3_13:                               #   in Loop: Header=BB3_5 Depth=1
	cmpq	$4, %rbx
	jne	.LBB3_14
# BB#15:
	cmpl	$10, %r14d
	jne	.LBB3_17
# BB#16:
	movq	$key_buff1, key_buff_ptr_global(%rip)
.LBB3_17:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	rank, .Lfunc_end3-rank
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI4_0:
	.quad	4734050326586327040     # double 314159265
.LCPI4_1:
	.quad	4742906807993761792     # double 1220703125
.LCPI4_2:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI4_3:
	.quad	4734409108273233920     # double 335544320
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbx, -16
	movl	B_test_index_array+16(%rip), %eax
	movl	%eax, test_index_array+16(%rip)
	movaps	B_test_index_array(%rip), %xmm0
	movaps	%xmm0, test_index_array(%rip)
	movl	B_test_rank_array+16(%rip), %eax
	movl	%eax, test_rank_array+16(%rip)
	movaps	B_test_rank_array(%rip), %xmm0
	movaps	%xmm0, test_rank_array(%rip)
	movl	$.Lstr, %edi
	callq	puts
	xorl	%ebx, %ebx
	movl	$.L.str.3, %edi
	movl	$33554432, %esi         # imm = 0x2000000
	movl	$66, %edx
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.4, %edi
	movl	$10, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$1, %edi
	xorl	%eax, %eax
	callq	timer_clear
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	create_seq
	movl	$1, %edi
	callq	rank
	movl	$0, passed_verification(%rip)
	movl	$.Lstr.18, %edi
	callq	puts
	callq	clock
	movq	%rax, start(%rip)
	movl	$.L.str.6, %edi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$1, %edi
	callq	rank
	movl	$.L.str.6, %edi
	movl	$2, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$2, %edi
	callq	rank
	movl	$.L.str.6, %edi
	movl	$3, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$3, %edi
	callq	rank
	movl	$.L.str.6, %edi
	movl	$4, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$4, %edi
	callq	rank
	movl	$.L.str.6, %edi
	movl	$5, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$5, %edi
	callq	rank
	movl	$.L.str.6, %edi
	movl	$6, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$6, %edi
	callq	rank
	movl	$.L.str.6, %edi
	movl	$7, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$7, %edi
	callq	rank
	movl	$.L.str.6, %edi
	movl	$8, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$8, %edi
	callq	rank
	movl	$.L.str.6, %edi
	movl	$9, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$9, %edi
	callq	rank
	movl	$.L.str.6, %edi
	movl	$10, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$10, %edi
	callq	rank
	movl	$1, %edi
	xorl	%eax, %eax
	callq	timer_stop
	movl	$1, %edi
	xorl	%eax, %eax
	callq	timer_read
	callq	clock
	movq	%rax, end(%rip)
	subq	start(%rip), %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI4_2(%rip), %xmm0
	movsd	%xmm0, cpu_time_used(%rip)
	movl	$.L.str.7, %edi
	movb	$1, %al
	callq	printf
	movq	key_buff_ptr_global(%rip), %rax
	.p2align	4, 0x90
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movslq	key_buff2(%rbx), %rcx
	movslq	key_buff2+128(%rbx), %rdx
	movslq	(%rax,%rcx,4), %rsi
	leaq	-1(%rsi), %rdi
	movl	%edi, (%rax,%rcx,4)
	movl	%ecx, key_array-4(,%rsi,4)
	prefetcht0	key_buff2+256(%rbx)
	prefetcht0	(%rax,%rdx,4)
	addq	$4, %rbx
	cmpq	$134217728, %rbx        # imm = 0x8000000
	jne	.LBB4_1
# BB#2:
	movq	key_array(%rip), %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	xorl	%edx, %edx
	cmpl	%ecx, %eax
	setg	%dl
	movd	%edx, %xmm3
	movd	%ecx, %xmm0
	pshufd	$36, %xmm0, %xmm1       # xmm1 = xmm0[0,1,2,0]
	movups	key_array+8(%rip), %xmm0
	movups	key_array+24(%rip), %xmm2
	shufps	$3, %xmm0, %xmm1        # xmm1 = xmm1[3,0],xmm0[0,0]
	shufps	$152, %xmm0, %xmm1      # xmm1 = xmm1[0,2],xmm0[1,2]
	pcmpgtd	%xmm0, %xmm1
	shufps	$3, %xmm2, %xmm0        # xmm0 = xmm0[3,0],xmm2[0,0]
	shufps	$152, %xmm2, %xmm0      # xmm0 = xmm0[0,2],xmm2[1,2]
	psrld	$31, %xmm1
	pcmpgtd	%xmm2, %xmm0
	psrld	$31, %xmm0
	paddd	%xmm3, %xmm1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	movups	key_array+40(%rax), %xmm3
	shufps	$3, %xmm3, %xmm2        # xmm2 = xmm2[3,0],xmm3[0,0]
	shufps	$152, %xmm3, %xmm2      # xmm2 = xmm2[0,2],xmm3[1,2]
	pcmpgtd	%xmm3, %xmm2
	psrld	$31, %xmm2
	paddd	%xmm1, %xmm2
	movups	key_array+56(%rax), %xmm1
	shufps	$3, %xmm1, %xmm3        # xmm3 = xmm3[3,0],xmm1[0,0]
	shufps	$152, %xmm1, %xmm3      # xmm3 = xmm3[0,2],xmm1[1,2]
	pcmpgtd	%xmm1, %xmm3
	psrld	$31, %xmm3
	paddd	%xmm0, %xmm3
	movups	key_array+72(%rax), %xmm0
	shufps	$3, %xmm0, %xmm1        # xmm1 = xmm1[3,0],xmm0[0,0]
	shufps	$152, %xmm0, %xmm1      # xmm1 = xmm1[0,2],xmm0[1,2]
	pcmpgtd	%xmm0, %xmm1
	psrld	$31, %xmm1
	paddd	%xmm2, %xmm1
	movups	key_array+88(%rax), %xmm2
	shufps	$3, %xmm2, %xmm0        # xmm0 = xmm0[3,0],xmm2[0,0]
	shufps	$152, %xmm2, %xmm0      # xmm0 = xmm0[0,2],xmm2[1,2]
	pcmpgtd	%xmm2, %xmm0
	psrld	$31, %xmm0
	paddd	%xmm3, %xmm0
	addq	$64, %rax
	cmpq	$134217664, %rax        # imm = 0x7FFFFC0
	jne	.LBB4_3
# BB#4:
	paddd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm1
	pshufd	$231, %xmm2, %xmm0      # xmm0 = xmm2[3,1,2,3]
	movd	%xmm0, %eax
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %ecx
	movl	$134217704, %edx        # imm = 0x7FFFFE8
	movq	key_array(%rdx), %rdx
	xorl	%esi, %esi
	cmpl	%edx, %eax
	setg	%sil
	addl	%ecx, %esi
	movq	%rdx, %rax
	shrq	$32, %rax
	xorl	%ecx, %ecx
	cmpl	%eax, %edx
	setg	%cl
	addl	%esi, %ecx
	movl	$134217712, %edx        # imm = 0x7FFFFF0
	movq	key_array(%rdx), %rdx
	xorl	%esi, %esi
	cmpl	%edx, %eax
	setg	%sil
	addl	%ecx, %esi
	movq	%rdx, %rax
	shrq	$32, %rax
	xorl	%ecx, %ecx
	cmpl	%eax, %edx
	setg	%cl
	addl	%esi, %ecx
	movl	$134217720, %edx        # imm = 0x7FFFFF8
	movq	key_array(%rdx), %rdx
	xorl	%edi, %edi
	cmpl	%edx, %eax
	setg	%dil
	addl	%ecx, %edi
	movq	%rdx, %rax
	shrq	$32, %rax
	xorl	%esi, %esi
	cmpl	%eax, %edx
	setg	%sil
	addl	%edi, %esi
	je	.LBB4_6
# BB#5:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	passed_verification(%rip), %eax
	jmp	.LBB4_7
.LBB4_6:
	movl	passed_verification(%rip), %eax
	incl	%eax
	movl	%eax, passed_verification(%rip)
.LBB4_7:
	movl	$51, %ebx
	cmpl	$51, %eax
	je	.LBB4_9
# BB#8:
	movl	$0, passed_verification(%rip)
	xorl	%ebx, %ebx
.LBB4_9:
	movsd	cpu_time_used(%rip), %xmm0 # xmm0 = mem[0],zero
	movsd	.LCPI4_3(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	divsd	.LCPI4_2(%rip), %xmm1
	subq	$8, %rsp
.Ltmp11:
	.cfi_adjust_cfa_offset 8
	movl	$.L.str.8, %edi
	movl	$66, %esi
	movl	$33554432, %edx         # imm = 0x2000000
	movl	$0, %ecx
	movl	$0, %r8d
	movl	$10, %r9d
	movb	$2, %al
	pushq	$.L.str.17
.Ltmp12:
	.cfi_adjust_cfa_offset 8
	pushq	$.L.str.16
.Ltmp13:
	.cfi_adjust_cfa_offset 8
	pushq	$.L.str.15
.Ltmp14:
	.cfi_adjust_cfa_offset 8
	pushq	$.L.str.14
.Ltmp15:
	.cfi_adjust_cfa_offset 8
	pushq	$.L.str.13
.Ltmp16:
	.cfi_adjust_cfa_offset 8
	pushq	$.L.str.12
.Ltmp17:
	.cfi_adjust_cfa_offset 8
	pushq	$.L.str.12
.Ltmp18:
	.cfi_adjust_cfa_offset 8
	pushq	$.L.str.11
.Ltmp19:
	.cfi_adjust_cfa_offset 8
	pushq	$.L.str.10
.Ltmp20:
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
.Ltmp21:
	.cfi_adjust_cfa_offset 8
	pushq	$.L.str.9
.Ltmp22:
	.cfi_adjust_cfa_offset 8
	callq	c_print_results
	addq	$96, %rsp
.Ltmp23:
	.cfi_adjust_cfa_offset -96
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
	.cfi_endproc

	.type	S_test_index_array,@object # @S_test_index_array
	.data
	.globl	S_test_index_array
	.p2align	4
S_test_index_array:
	.long	48427                   # 0xbd2b
	.long	17148                   # 0x42fc
	.long	23627                   # 0x5c4b
	.long	62548                   # 0xf454
	.long	4431                    # 0x114f
	.size	S_test_index_array, 20

	.type	S_test_rank_array,@object # @S_test_rank_array
	.globl	S_test_rank_array
	.p2align	4
S_test_rank_array:
	.long	0                       # 0x0
	.long	18                      # 0x12
	.long	346                     # 0x15a
	.long	64917                   # 0xfd95
	.long	65463                   # 0xffb7
	.size	S_test_rank_array, 20

	.type	W_test_index_array,@object # @W_test_index_array
	.globl	W_test_index_array
	.p2align	4
W_test_index_array:
	.long	357773                  # 0x5758d
	.long	934767                  # 0xe436f
	.long	875723                  # 0xd5ccb
	.long	898999                  # 0xdb7b7
	.long	404505                  # 0x62c19
	.size	W_test_index_array, 20

	.type	W_test_rank_array,@object # @W_test_rank_array
	.globl	W_test_rank_array
	.p2align	4
W_test_rank_array:
	.long	1249                    # 0x4e1
	.long	11698                   # 0x2db2
	.long	1039987                 # 0xfde73
	.long	1043896                 # 0xfedb8
	.long	1048018                 # 0xffdd2
	.size	W_test_rank_array, 20

	.type	A_test_index_array,@object # @A_test_index_array
	.globl	A_test_index_array
	.p2align	4
A_test_index_array:
	.long	2112377                 # 0x203b79
	.long	662041                  # 0xa1a19
	.long	5336171                 # 0x516c6b
	.long	3642833                 # 0x3795d1
	.long	4250760                 # 0x40dc88
	.size	A_test_index_array, 20

	.type	A_test_rank_array,@object # @A_test_rank_array
	.globl	A_test_rank_array
	.p2align	4
A_test_rank_array:
	.long	104                     # 0x68
	.long	17523                   # 0x4473
	.long	123928                  # 0x1e418
	.long	8288932                 # 0x7e7aa4
	.long	8388264                 # 0x7ffea8
	.size	A_test_rank_array, 20

	.type	B_test_index_array,@object # @B_test_index_array
	.globl	B_test_index_array
	.p2align	4
B_test_index_array:
	.long	41869                   # 0xa38d
	.long	812306                  # 0xc6512
	.long	5102857                 # 0x4ddd09
	.long	18232239                # 0x11633af
	.long	26860214                # 0x199dab6
	.size	B_test_index_array, 20

	.type	B_test_rank_array,@object # @B_test_rank_array
	.globl	B_test_rank_array
	.p2align	4
B_test_rank_array:
	.long	33422937                # 0x1fdfe59
	.long	10244                   # 0x2804
	.long	59149                   # 0xe70d
	.long	33135281                # 0x1f99ab1
	.long	99                      # 0x63
	.size	B_test_rank_array, 20

	.type	C_test_index_array,@object # @C_test_index_array
	.globl	C_test_index_array
	.p2align	4
C_test_index_array:
	.long	44172927                # 0x2a2067f
	.long	72999161                # 0x459e0f9
	.long	74326391                # 0x46e2177
	.long	129606274               # 0x7b9a282
	.long	21736814                # 0x14bad6e
	.size	C_test_index_array, 20

	.type	C_test_rank_array,@object # @C_test_rank_array
	.globl	C_test_rank_array
	.p2align	4
C_test_rank_array:
	.long	61147                   # 0xeedb
	.long	882988                  # 0xd792c
	.long	266290                  # 0x41032
	.long	133997595               # 0x7fca41b
	.long	133525895               # 0x7f57187
	.size	C_test_rank_array, 20

	.type	randlc.KS,@object       # @randlc.KS
	.local	randlc.KS
	.comm	randlc.KS,1,4
	.type	randlc.R23,@object      # @randlc.R23
	.local	randlc.R23
	.comm	randlc.R23,8,8
	.type	randlc.R46,@object      # @randlc.R46
	.local	randlc.R46
	.comm	randlc.R46,8,8
	.type	randlc.T23,@object      # @randlc.T23
	.local	randlc.T23
	.comm	randlc.T23,8,8
	.type	randlc.T46,@object      # @randlc.T46
	.local	randlc.T46
	.comm	randlc.T46,8,8
	.type	key_array,@object       # @key_array
	.comm	key_array,134217728,16
	.type	key_buff2,@object       # @key_buff2
	.comm	key_buff2,134217728,16
	.type	key_buff_ptr_global,@object # @key_buff_ptr_global
	.comm	key_buff_ptr_global,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Full_verify: number of keys out of sort: %d\n"
	.size	.L.str, 45

	.type	passed_verification,@object # @passed_verification
	.comm	passed_verification,4,4
	.type	test_index_array,@object # @test_index_array
	.comm	test_index_array,20,16
	.type	partial_verify_vals,@object # @partial_verify_vals
	.comm	partial_verify_vals,20,16
	.type	key_buff1,@object       # @key_buff1
	.comm	key_buff1,134217728,16
	.type	test_rank_array,@object # @test_rank_array
	.comm	test_rank_array,20,16
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Failed partial verification: iteration %d, test key %d\n"
	.size	.L.str.1, 56

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	" Size:  %d  (class %c)\n"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	" Iterations:   %d\n"
	.size	.L.str.4, 19

	.type	start,@object           # @start
	.comm	start,8,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"        %d\n"
	.size	.L.str.6, 12

	.type	end,@object             # @end
	.comm	end,8,8
	.type	cpu_time_used,@object   # @cpu_time_used
	.comm	cpu_time_used,8,8
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"time : %f\n"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"IS"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"keys ranked"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"2.3"
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"15 Aug 2016"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gcc"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"-lm"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"-I../common"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"-O3  -static -g -std=c99 #-mmic"
	.size	.L.str.15, 32

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"-static -openmp #-mmic "
	.size	.L.str.16, 24

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"randlc"
	.size	.L.str.17, 7

	.type	.Lstr,@object           # @str
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr:
	.asciz	"\n\n NAS Parallel Benchmarks 2.3 OpenACC C version - IS Benchmark\n"
	.size	.Lstr, 65

	.type	.Lstr.18,@object        # @str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.18:
	.asciz	"\n   iteration"
	.size	.Lstr.18, 14


	.ident	"clang version 3.9.0 (tags/RELEASE_390/final)"
	.section	".note.GNU-stack","",@progbits
