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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	callq	_pthread_self
	movq	%rax, %rdi
	callq	_pthread_detach
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	callq	_mach_absolute_time
	leaq	L_.str(%rip), %rdi
	movq	_data@GOTPCREL(%rip), %rcx
	movq	-16(%rbp), %rdx
	subq	8(%rdx), %rax
	movq	-16(%rbp), %rdx
	movslq	(%rdx), %rdx
	movq	%rax, (%rcx,%rdx,8)
	movq	-16(%rbp), %rax
	movslq	(%rax), %rax
	movq	(%rcx,%rax,8), %rsi
	movb	$0, %al
	callq	_printf
	movq	-8(%rbp), %rdi
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	callq	_free
	xorl	%eax, %eax
                                        ## kill: RAX<def> EAX<kill>
	addq	$32, %rsp
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
	subq	$112, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	_cycles(%rip), %ecx
	movl	%ecx, %eax
	movq	%rsp, %rdx
	movq	%rdx, -40(%rbp)
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rsp
	movl	$0, -44(%rbp)
	movq	%rdx, -96(%rbp)         ## 8-byte Spill
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	_cycles(%rip), %eax
	jge	LBB1_4
## BB#2:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	$16, %eax
	movl	%eax, %edi
	callq	_malloc
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
	callq	_mach_absolute_time
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	_thread_func(%rip), %rdx
	movq	-56(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movslq	-44(%rbp), %rax
	shlq	$3, %rax
	movq	-96(%rbp), %rdi         ## 8-byte Reload
	addq	%rax, %rdi
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	callq	_pthread_create
	movl	%eax, -100(%rbp)        ## 4-byte Spill
## BB#3:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB1_1
LBB1_4:
	movl	$0, -60(%rbp)
LBB1_5:                                 ## =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	_cycles(%rip), %eax
	jge	LBB1_8
## BB#6:                                ##   in Loop: Header=BB1_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movslq	-60(%rbp), %rcx
	movq	-96(%rbp), %rdx         ## 8-byte Reload
	movq	(%rdx,%rcx,8), %rdi
	callq	_pthread_join
	movl	%eax, -104(%rbp)        ## 4-byte Spill
## BB#7:                                ##   in Loop: Header=BB1_5 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	LBB1_5
LBB1_8:
	movq	_data@GOTPCREL(%rip), %rdi
	movl	_cycles(%rip), %esi
	callq	_std_dev
	movq	_data@GOTPCREL(%rip), %rdi
	movsd	%xmm0, -72(%rbp)
	movl	_cycles(%rip), %esi
	callq	_mean
	leaq	L_.str1(%rip), %rdi
	movsd	%xmm0, -80(%rbp)
	movsd	-80(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        ## xmm1 = mem[0],zero
	movb	$2, %al
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdi
	movl	$0, -12(%rbp)
	movl	$1, -84(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsp
	movl	-12(%rbp), %esi
	movq	(%rdi), %rcx
	cmpq	-8(%rbp), %rcx
	movl	%eax, -108(%rbp)        ## 4-byte Spill
	movl	%esi, -112(%rbp)        ## 4-byte Spill
	jne	LBB1_10
## BB#9:                                ## %SP_return
	movl	-112(%rbp), %eax        ## 4-byte Reload
	movq	%rbp, %rsp
	popq	%rbp
	retq
LBB1_10:                                ## %CallStackCheckFailBlk
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
	.asciz	"\n%llu,"

L_.str1:                                ## @.str1
	.asciz	"\nMean: %f\nStand: %f\n"

	.comm	_debug_on,4,2           ## @debug_on

.subsections_via_symbols
