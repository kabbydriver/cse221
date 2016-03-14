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
	subq	$32, %rsp
	callq	_mach_absolute_time
	movl	$1, %edi
	movq	%rax, -8(%rbp)
	callq	_sleep
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	callq	_mach_absolute_time
	leaq	L_.str(%rip), %rdi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	_printf
	leaq	L_.str1(%rip), %rdi
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	xorl	%ecx, %ecx
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%llu,"

L_.str1:                                ## @.str1
	.asciz	"\n"

	.comm	_debug_on,4,2           ## @debug_on

.subsections_via_symbols
