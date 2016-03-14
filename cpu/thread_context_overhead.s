	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_thread_func
	.align	4, 0x90
_thread_func:                           ## @thread_func
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
	callq	_pthread_self
	movq	%rax, %rdi
	callq	_pthread_detach
	movl	$4, %ecx
	movl	%ecx, %edx
	leaq	-20(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rsi, -16(%rbp)
	movl	$5, -20(%rbp)
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rsi
	movl	4(%rsi), %ecx
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movl	%ecx, %edi
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	callq	_read
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	callq	_mach_absolute_time
	leaq	L_.str(%rip), %rdi
	movq	_data@GOTPCREL(%rip), %rdx
	movq	-16(%rbp), %rsi
	subq	8(%rsi), %rax
	movq	-16(%rbp), %rsi
	movslq	(%rsi), %rsi
	movq	%rax, (%rdx,%rsi,8)
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	movq	-16(%rbp), %rax
	movslq	(%rax), %rax
	movq	(%rdx,%rax,8), %rdx
	movb	$0, %al
	callq	_printf
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	movq	%rdx, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

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
	subq	$144, %rsp
	xorl	%esi, %esi
	movq	$-1, %rcx
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -20(%rbp)
	movl	$1000, -24(%rbp)        ## imm = 0x3E8
	movl	-24(%rbp), %edx
	movl	%edx, %eax
	movq	%rsp, %rdi
	movq	%rdi, -32(%rbp)
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, %rax
	movslq	-24(%rbp), %rdx
	movq	%rdi, -88(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	___memset_chk
	movl	$0, -36(%rbp)
	movq	%rax, -96(%rbp)         ## 8-byte Spill
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	LBB1_4
## BB#2:                                ##   in Loop: Header=BB1_1 Depth=1
	leaq	-16(%rbp), %rdi
	callq	_pipe
	movl	$24, %ecx
	movl	%ecx, %edi
	movl	%eax, -100(%rbp)        ## 4-byte Spill
	callq	_malloc
	leaq	-48(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	_thread_func(%rip), %rdx
	leaq	-16(%rbp), %r8
	movq	%rax, -56(%rbp)
	movl	-36(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rax
	movq	%r8, 16(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	callq	_pthread_create
	movl	%eax, -104(%rbp)        ## 4-byte Spill
	callq	_mach_absolute_time
	movl	$4, %r9d
	movl	%r9d, %edx
	movq	-56(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movl	-12(%rbp), %edi
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	_write
	xorl	%edi, %edi
	movl	%edi, %esi
	movq	-48(%rbp), %rdi
	movq	%rax, -112(%rbp)        ## 8-byte Spill
	callq	_pthread_join
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -116(%rbp)        ## 4-byte Spill
	callq	_free
	movl	-16(%rbp), %edi
	callq	_close
	movl	-12(%rbp), %edi
	movl	%eax, -120(%rbp)        ## 4-byte Spill
	callq	_close
	movl	%eax, -124(%rbp)        ## 4-byte Spill
## BB#3:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB1_1
LBB1_4:
	movl	-24(%rbp), %esi
	movq	-88(%rbp), %rdi         ## 8-byte Reload
	callq	_std_dev
	movsd	%xmm0, -64(%rbp)
	movl	-24(%rbp), %esi
	movq	-88(%rbp), %rdi         ## 8-byte Reload
	callq	_mean
	leaq	L_.str1(%rip), %rdi
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        ## xmm1 = mem[0],zero
	movb	$2, %al
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdi
	movl	$0, -20(%rbp)
	movl	$1, -76(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsp
	movl	-20(%rbp), %esi
	movq	(%rdi), %rcx
	cmpq	-8(%rbp), %rcx
	movl	%eax, -128(%rbp)        ## 4-byte Spill
	movl	%esi, -132(%rbp)        ## 4-byte Spill
	jne	LBB1_6
## BB#5:                                ## %SP_return
	movl	-132(%rbp), %eax        ## 4-byte Reload
	movq	%rbp, %rsp
	popq	%rbp
	retq
LBB1_6:                                 ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
	.cfi_endproc

	.section	__DATA,__data
	.globl	_cycles                 ## @cycles
	.align	2
_cycles:
	.long	1000                    ## 0x3e8

	.comm	_data,8000,4            ## @data
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d, %llu\n"

L_.str1:                                ## @.str1
	.asciz	"\nMean:  %f\nStand: %f\n"

	.comm	_debug_on,4,2           ## @debug_on

.subsections_via_symbols
