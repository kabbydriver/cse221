	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_make_list
	.align	4, 0x90
_make_list:                             ## @make_list
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	shlq	$3, %rsi
	movq	%rsi, %rdi
	callq	_malloc
	xorl	%esi, %esi
	movq	$-1, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdi
	shlq	$3, %rdi
	movq	%rdi, -48(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	callq	___memset_chk
	movq	$0, -32(%rbp)
	movq	%rax, -56(%rbp)         ## 8-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	setne	%dl
	xorb	$1, %dl
	testb	$1, %dl
	jne	LBB0_2
	jmp	LBB0_3
LBB0_2:                                 ##   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	addq	-16(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-8(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rsi
	shlq	$3, %rsi
	addq	%rsi, %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdx, (%rdi,%rsi,8)
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	jmp	LBB0_1
LBB0_3:
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI1_0:
	.quad	4611686018427387904     ## double 2
LCPI1_1:
	.quad	4890909195324358656     ## double 9.2233720368547758E+18
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	%edi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpl	$2, -16(%rbp)
	jge	LBB1_2
## BB#1:
	leaq	L_.str(%rip), %rsi
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movb	$0, %al
	callq	_fprintf
	xorl	%edi, %edi
	movl	%eax, -124(%rbp)        ## 4-byte Spill
	callq	_exit
LBB1_2:
	xorl	%esi, %esi
	movq	$-1, %rcx
	movl	$1000000, -28(%rbp)     ## imm = 0xF4240
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movl	%esi, -128(%rbp)        ## 4-byte Spill
	movq	%rcx, -136(%rbp)        ## 8-byte Spill
	callq	_atoi
	cvtsi2sdl	%eax, %xmm1
	movsd	LCPI1_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	callq	_pow
	movsd	LCPI1_1(%rip), %xmm1    ## xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rcx
	movabsq	$-9223372036854775808, %rdi ## imm = 0x8000000000000000
	xorq	%rdi, %rcx
	cvttsd2si	%xmm0, %rdi
	ucomisd	%xmm1, %xmm0
	cmovbq	%rdi, %rcx
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rdi
	callq	_atoi
	movslq	%eax, %rcx
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rcx, %rsi
	callq	_make_list
	movq	%rax, -72(%rbp)
	movq	%rax, -80(%rbp)
	movl	$0, -84(%rbp)
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	movq	%rsp, %rcx
	movq	%rcx, -96(%rbp)
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, %rax
	movslq	-28(%rbp), %rdx
	movq	%rax, %rdi
	movl	-128(%rbp), %esi        ## 4-byte Reload
	movq	-136(%rbp), %rax        ## 8-byte Reload
	movq	%rcx, -144(%rbp)        ## 8-byte Spill
	movq	%rax, %rcx
	callq	___memset_chk
	movq	%rax, -152(%rbp)        ## 8-byte Spill
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB1_5
## BB#4:                                ##   in Loop: Header=BB1_3 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	_mach_absolute_time
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	callq	_mach_absolute_time
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movq	-144(%rbp), %rdx        ## 8-byte Reload
	movq	%rax, (%rdx,%rcx,8)
	movl	-84(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -84(%rbp)
	jmp	LBB1_3
LBB1_5:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	movl	-28(%rbp), %esi
	movq	-144(%rbp), %rdi        ## 8-byte Reload
	callq	_std_dev
	movsd	%xmm0, -112(%rbp)
	movl	-28(%rbp), %esi
	movq	-144(%rbp), %rdi        ## 8-byte Reload
	callq	_mean
	leaq	L_.str1(%rip), %rsi
	movq	___stderrp@GOTPCREL(%rip), %rax
	movsd	%xmm0, -120(%rbp)
	movq	(%rax), %rdi
	movsd	-120(%rbp), %xmm0       ## xmm0 = mem[0],zero
	movb	$1, %al
	callq	_fprintf
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	8(%rdi), %rdi
	movl	%eax, -156(%rbp)        ## 4-byte Spill
	movq	%rsi, -168(%rbp)        ## 8-byte Spill
	callq	_atoi
	leaq	L_.str2(%rip), %rdi
	movslq	%eax, %rdx
	movsd	-120(%rbp), %xmm0       ## xmm0 = mem[0],zero
	movq	-168(%rbp), %rsi        ## 8-byte Reload
	movb	$1, %al
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdx
	movq	-96(%rbp), %rsi
	movq	%rsi, %rsp
	movl	-12(%rbp), %ecx
	movq	(%rdx), %rdx
	cmpq	-8(%rbp), %rdx
	movl	%eax, -172(%rbp)        ## 4-byte Spill
	movl	%ecx, -176(%rbp)        ## 4-byte Spill
	jne	LBB1_7
## BB#6:                                ## %SP_return
	movl	-176(%rbp), %eax        ## 4-byte Reload
	movq	%rbp, %rsp
	popq	%rbp
	retq
LBB1_7:                                 ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Wrong num args\n"

L_.str1:                                ## @.str1
	.asciz	"%f\n"

L_.str2:                                ## @.str2
	.asciz	"%llu\t%llu\t%f\n"

	.comm	_debug_on,4,2           ## @debug_on

.subsections_via_symbols
