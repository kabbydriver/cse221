	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
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
	subq	$112, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$1000, -16(%rbp)        ## imm = 0x3E8
	movl	-16(%rbp), %ecx
	movl	%ecx, %eax
	movq	%rsp, %rdx
	movq	%rdx, -40(%rbp)
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rsp
	movl	$0, -44(%rbp)
	movq	%rdx, -88(%rbp)         ## 8-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	LBB0_9
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	callq	_mach_absolute_time
	movq	%rax, -24(%rbp)
	callq	_vfork
	movl	%eax, -48(%rbp)
	callq	_mach_absolute_time
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	LBB0_4
## BB#3:
	leaq	L_.str(%rip), %rsi
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movb	$0, %al
	callq	_fprintf
	movl	$1, %edi
	movl	%eax, -92(%rbp)         ## 4-byte Spill
	callq	_exit
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -48(%rbp)
	jne	LBB0_6
## BB#5:
	xorl	%edi, %edi
	callq	_exit
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movq	-88(%rbp), %rdx         ## 8-byte Reload
	movq	%rax, (%rdx,%rcx,8)
## BB#7:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_8
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB0_1
LBB0_9:
	movl	-16(%rbp), %esi
	movq	-88(%rbp), %rdi         ## 8-byte Reload
	callq	_std_dev
	movsd	%xmm0, -64(%rbp)
	movl	-16(%rbp), %esi
	movq	-88(%rbp), %rdi         ## 8-byte Reload
	callq	_mean
	leaq	L_.str1(%rip), %rdi
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        ## xmm1 = mem[0],zero
	movb	$2, %al
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdi
	movl	$0, -12(%rbp)
	movl	$1, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsp
	movl	-12(%rbp), %esi
	movq	(%rdi), %rcx
	cmpq	-8(%rbp), %rcx
	movl	%eax, -96(%rbp)         ## 4-byte Spill
	movl	%esi, -100(%rbp)        ## 4-byte Spill
	jne	LBB0_11
## BB#10:                               ## %SP_return
	movl	-100(%rbp), %eax        ## 4-byte Reload
	movq	%rbp, %rsp
	popq	%rbp
	retq
LBB0_11:                                ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"WRONG\n"

L_.str1:                                ## @.str1
	.asciz	"\nMean: %f\nStand: %f\n"

	.comm	_debug_on,4,2           ## @debug_on

.subsections_via_symbols
