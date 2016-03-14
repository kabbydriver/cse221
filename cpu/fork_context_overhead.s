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
	subq	$144, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -20(%rbp)
	movl	$1000, -24(%rbp)        ## imm = 0x3E8
	movl	-24(%rbp), %ecx
	movl	%ecx, %eax
	movq	%rsp, %rdx
	movq	%rdx, -32(%rbp)
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rsp
	movl	$0, -36(%rbp)
	movq	%rdx, -96(%rbp)         ## 8-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	LBB0_11
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	leaq	-16(%rbp), %rdi
	callq	_pipe
	movl	%eax, -60(%rbp)
	callq	_fork
	movl	%eax, -64(%rbp)
	cmpl	$0, -60(%rbp)
	jge	LBB0_4
## BB#3:
	leaq	L_.str(%rip), %rdi
	callq	_perror
	movl	$0, -20(%rbp)
	movl	$1, -68(%rbp)
	jmp	LBB0_12
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -64(%rbp)
	jge	LBB0_6
## BB#5:
	leaq	L_.str1(%rip), %rdi
	callq	_perror
	movl	$0, -20(%rbp)
	movl	$1, -68(%rbp)
	jmp	LBB0_12
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -64(%rbp)
	jne	LBB0_8
## BB#7:
	callq	_mach_absolute_time
	movl	$8, %ecx
	movl	%ecx, %edx
	leaq	-48(%rbp), %rsi
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %edi
	callq	_write
	movl	$0, -20(%rbp)
	movl	$1, -68(%rbp)
	movq	%rax, -104(%rbp)        ## 8-byte Spill
	jmp	LBB0_12
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	$8, %eax
	movl	%eax, %edx
	leaq	-48(%rbp), %rcx
	movl	-16(%rbp), %edi
	movq	%rcx, %rsi
	callq	_read
	movq	%rax, -112(%rbp)        ## 8-byte Spill
	callq	_mach_absolute_time
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	subq	-48(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-96(%rbp), %rdx         ## 8-byte Reload
	movq	%rax, (%rdx,%rcx,8)
	movl	-16(%rbp), %edi
	callq	_close
	movl	-12(%rbp), %edi
	movl	%eax, -116(%rbp)        ## 4-byte Spill
	callq	_close
	leaq	-72(%rbp), %rsi
	xorl	%edx, %edx
	movl	-64(%rbp), %edi
	movl	%eax, -120(%rbp)        ## 4-byte Spill
	callq	_waitpid
	movl	%eax, -124(%rbp)        ## 4-byte Spill
## BB#9:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_10
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB0_1
LBB0_11:
	movl	-24(%rbp), %esi
	movq	-96(%rbp), %rdi         ## 8-byte Reload
	callq	_std_dev
	movsd	%xmm0, -80(%rbp)
	movl	-24(%rbp), %esi
	movq	-96(%rbp), %rdi         ## 8-byte Reload
	callq	_mean
	leaq	L_.str2(%rip), %rdi
	movsd	%xmm0, -88(%rbp)
	movsd	-88(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        ## xmm1 = mem[0],zero
	movb	$2, %al
	callq	_printf
	movl	$0, -20(%rbp)
	movl	$1, -68(%rbp)
	movl	%eax, -128(%rbp)        ## 4-byte Spill
LBB0_12:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsp
	movl	-20(%rbp), %edx
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	movl	%edx, -132(%rbp)        ## 4-byte Spill
	jne	LBB0_14
## BB#13:                               ## %SP_return
	movl	-132(%rbp), %eax        ## 4-byte Reload
	movq	%rbp, %rsp
	popq	%rbp
	retq
LBB0_14:                                ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"pipe failed"

L_.str1:                                ## @.str1
	.asciz	"fork failed"

L_.str2:                                ## @.str2
	.asciz	"\nMean:  %f\nStand: %f\n"

	.comm	_debug_on,4,2           ## @debug_on

.subsections_via_symbols
