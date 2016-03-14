	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_empty_procedure
	.align	4, 0x90
_empty_procedure:                       ## @empty_procedure
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
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_one_procedure
	.align	4, 0x90
_one_procedure:                         ## @one_procedure
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
	movl	%edi, -4(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_two_procedure
	.align	4, 0x90
_two_procedure:                         ## @two_procedure
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp6:
	.cfi_def_cfa_offset 16
Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp8:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_three_procedure
	.align	4, 0x90
_three_procedure:                       ## @three_procedure
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp9:
	.cfi_def_cfa_offset 16
Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp11:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_four_procedure
	.align	4, 0x90
_four_procedure:                        ## @four_procedure
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp12:
	.cfi_def_cfa_offset 16
Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp14:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_five_procedure
	.align	4, 0x90
_five_procedure:                        ## @five_procedure
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp15:
	.cfi_def_cfa_offset 16
Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp17:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_six_procedure
	.align	4, 0x90
_six_procedure:                         ## @six_procedure
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp18:
	.cfi_def_cfa_offset 16
Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp20:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	%r9d, -24(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_seven_procedure
	.align	4, 0x90
_seven_procedure:                       ## @seven_procedure
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp21:
	.cfi_def_cfa_offset 16
Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp23:
	.cfi_def_cfa_register %rbp
	movl	16(%rbp), %eax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	%r9d, -24(%rbp)
	movl	%eax, -28(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_proc_0
	.align	4, 0x90
_proc_0:                                ## @proc_0
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp24:
	.cfi_def_cfa_offset 16
Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp26:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
Ltmp27:
	.cfi_offset %rbx, -24
	## InlineAsm Start
	rdtscp
	rdtsc
	movl	%edx, %esi
	movl	%eax, %edi

	## InlineAsm End
	movl	%esi, -12(%rbp)
	movl	%edi, -16(%rbp)
	callq	_empty_procedure
	## InlineAsm Start
	rdtscp
	movl	%edx, %esi
	movl	%eax, %edi
	cpuid

	## InlineAsm End
	movl	%esi, -20(%rbp)
	movl	%edi, -24(%rbp)
	movslq	-12(%rbp), %rax
	shlq	$32, %rax
	movslq	-16(%rbp), %rcx
	orq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movslq	-20(%rbp), %rax
	shlq	$32, %rax
	movslq	-24(%rbp), %rcx
	orq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_proc_1
	.align	4, 0x90
_proc_1:                                ## @proc_1
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp28:
	.cfi_def_cfa_offset 16
Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp30:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
Ltmp31:
	.cfi_offset %rbx, -24
	## InlineAsm Start
	rdtscp
	rdtsc
	movl	%edx, %esi
	movl	%eax, %edi

	## InlineAsm End
	movl	$1, %r8d
	movl	%esi, -12(%rbp)
	movl	%edi, -16(%rbp)
	movl	%r8d, %edi
	callq	_one_procedure
	## InlineAsm Start
	rdtscp
	movl	%edx, %esi
	movl	%eax, %edi
	cpuid

	## InlineAsm End
	movl	%esi, -20(%rbp)
	movl	%edi, -24(%rbp)
	movslq	-12(%rbp), %rax
	shlq	$32, %rax
	movslq	-16(%rbp), %rcx
	orq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movslq	-20(%rbp), %rax
	shlq	$32, %rax
	movslq	-24(%rbp), %rcx
	orq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_proc_2
	.align	4, 0x90
_proc_2:                                ## @proc_2
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp32:
	.cfi_def_cfa_offset 16
Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp34:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
Ltmp35:
	.cfi_offset %rbx, -24
	## InlineAsm Start
	rdtscp
	rdtsc
	movl	%edx, %esi
	movl	%eax, %edi

	## InlineAsm End
	movl	$1, %r8d
	movl	$2, %r9d
	movl	%esi, -12(%rbp)
	movl	%edi, -16(%rbp)
	movl	%r8d, %edi
	movl	%r9d, %esi
	callq	_two_procedure
	## InlineAsm Start
	rdtscp
	movl	%edx, %esi
	movl	%eax, %edi
	cpuid

	## InlineAsm End
	movl	%esi, -20(%rbp)
	movl	%edi, -24(%rbp)
	movslq	-12(%rbp), %rax
	shlq	$32, %rax
	movslq	-16(%rbp), %rcx
	orq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movslq	-20(%rbp), %rax
	shlq	$32, %rax
	movslq	-24(%rbp), %rcx
	orq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_proc_3
	.align	4, 0x90
_proc_3:                                ## @proc_3
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp36:
	.cfi_def_cfa_offset 16
Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp38:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
Ltmp39:
	.cfi_offset %rbx, -24
	## InlineAsm Start
	rdtscp
	rdtsc
	movl	%edx, %esi
	movl	%eax, %edi

	## InlineAsm End
	movl	$1, %r8d
	movl	$2, %r9d
	movl	$3, %edx
	movl	%esi, -12(%rbp)
	movl	%edi, -16(%rbp)
	movl	%r8d, %edi
	movl	%r9d, %esi
	callq	_three_procedure
	## InlineAsm Start
	rdtscp
	movl	%edx, %esi
	movl	%eax, %edi
	cpuid

	## InlineAsm End
	movl	%esi, -20(%rbp)
	movl	%edi, -24(%rbp)
	movslq	-12(%rbp), %rax
	shlq	$32, %rax
	movslq	-16(%rbp), %rcx
	orq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movslq	-20(%rbp), %rax
	shlq	$32, %rax
	movslq	-24(%rbp), %rcx
	orq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_proc_4
	.align	4, 0x90
_proc_4:                                ## @proc_4
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp40:
	.cfi_def_cfa_offset 16
Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp42:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
Ltmp43:
	.cfi_offset %rbx, -24
	## InlineAsm Start
	rdtscp
	rdtsc
	movl	%edx, %esi
	movl	%eax, %edi

	## InlineAsm End
	movl	$1, %r8d
	movl	$2, %r9d
	movl	$3, %edx
	movl	$4, %ecx
	movl	%esi, -12(%rbp)
	movl	%edi, -16(%rbp)
	movl	%r8d, %edi
	movl	%r9d, %esi
	callq	_four_procedure
	## InlineAsm Start
	rdtscp
	movl	%edx, %esi
	movl	%eax, %edi
	cpuid

	## InlineAsm End
	movl	%esi, -20(%rbp)
	movl	%edi, -24(%rbp)
	movslq	-12(%rbp), %rax
	shlq	$32, %rax
	movslq	-16(%rbp), %rcx
	orq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movslq	-20(%rbp), %rax
	shlq	$32, %rax
	movslq	-24(%rbp), %rcx
	orq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_proc_5
	.align	4, 0x90
_proc_5:                                ## @proc_5
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp44:
	.cfi_def_cfa_offset 16
Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp46:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
Ltmp47:
	.cfi_offset %rbx, -24
	## InlineAsm Start
	rdtscp
	rdtsc
	movl	%edx, %esi
	movl	%eax, %edi

	## InlineAsm End
	movl	$1, %r8d
	movl	$2, %r9d
	movl	$3, %edx
	movl	$4, %ecx
	movl	$5, %r10d
	movl	%esi, -12(%rbp)
	movl	%edi, -16(%rbp)
	movl	%r8d, %edi
	movl	%r9d, %esi
	movl	%r10d, %r8d
	callq	_five_procedure
	## InlineAsm Start
	rdtscp
	movl	%edx, %esi
	movl	%eax, %edi
	cpuid

	## InlineAsm End
	movl	%esi, -20(%rbp)
	movl	%edi, -24(%rbp)
	movslq	-12(%rbp), %rax
	shlq	$32, %rax
	movslq	-16(%rbp), %rcx
	orq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movslq	-20(%rbp), %rax
	shlq	$32, %rax
	movslq	-24(%rbp), %rcx
	orq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_proc_6
	.align	4, 0x90
_proc_6:                                ## @proc_6
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp48:
	.cfi_def_cfa_offset 16
Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp50:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
Ltmp51:
	.cfi_offset %rbx, -24
	## InlineAsm Start
	rdtscp
	rdtsc
	movl	%edx, %esi
	movl	%eax, %edi

	## InlineAsm End
	movl	$1, %r8d
	movl	$2, %r9d
	movl	$3, %edx
	movl	$4, %ecx
	movl	$5, %r10d
	movl	$6, %r11d
	movl	%esi, -12(%rbp)
	movl	%edi, -16(%rbp)
	movl	%r8d, %edi
	movl	%r9d, %esi
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	callq	_six_procedure
	## InlineAsm Start
	rdtscp
	movl	%edx, %esi
	movl	%eax, %edi
	cpuid

	## InlineAsm End
	movl	%esi, -20(%rbp)
	movl	%edi, -24(%rbp)
	movslq	-12(%rbp), %rax
	shlq	$32, %rax
	movslq	-16(%rbp), %rcx
	orq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movslq	-20(%rbp), %rax
	shlq	$32, %rax
	movslq	-24(%rbp), %rcx
	orq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_proc_7
	.align	4, 0x90
_proc_7:                                ## @proc_7
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp52:
	.cfi_def_cfa_offset 16
Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp54:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
Ltmp55:
	.cfi_offset %rbx, -32
Ltmp56:
	.cfi_offset %r14, -24
	## InlineAsm Start
	rdtscp
	rdtsc
	movl	%edx, %esi
	movl	%eax, %edi

	## InlineAsm End
	movl	$1, %r8d
	movl	$2, %r9d
	movl	$3, %edx
	movl	$4, %ecx
	movl	$5, %r10d
	movl	$6, %r11d
	movl	$7, %r14d
	movl	%esi, -20(%rbp)
	movl	%edi, -24(%rbp)
	movl	%r8d, %edi
	movl	%r9d, %esi
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	movl	$7, (%rsp)
	movl	%r14d, -52(%rbp)        ## 4-byte Spill
	callq	_seven_procedure
	## InlineAsm Start
	rdtscp
	movl	%edx, %esi
	movl	%eax, %edi
	cpuid

	## InlineAsm End
	movl	%esi, -28(%rbp)
	movl	%edi, -32(%rbp)
	movslq	-20(%rbp), %rax
	shlq	$32, %rax
	movslq	-24(%rbp), %rcx
	orq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movslq	-28(%rbp), %rax
	shlq	$32, %rax
	movslq	-32(%rbp), %rcx
	orq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	subq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp57:
	.cfi_def_cfa_offset 16
Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	leaq	_proc_0(%rip), %rax
	leaq	-24(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	movl	$1000, %r8d             ## imm = 0x3E8
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	%r8d, %ecx
	callq	_function_runner
	leaq	L_.str(%rip), %rdi
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        ## xmm1 = mem[0],zero
	movb	$2, %al
	callq	_printf
	leaq	_proc_1(%rip), %rdx
	leaq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	movl	$1000, %ecx             ## imm = 0x3E8
	movq	%rdi, -40(%rbp)         ## 8-byte Spill
	movq	%rdx, %rdi
	movq	-40(%rbp), %rdx         ## 8-byte Reload
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	callq	_function_runner
	leaq	L_.str1(%rip), %rdi
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        ## xmm1 = mem[0],zero
	movb	$2, %al
	callq	_printf
	leaq	_proc_2(%rip), %rdx
	leaq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	movl	$1000, %ecx             ## imm = 0x3E8
	movq	%rdi, -56(%rbp)         ## 8-byte Spill
	movq	%rdx, %rdi
	movq	-56(%rbp), %rdx         ## 8-byte Reload
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	callq	_function_runner
	leaq	L_.str2(%rip), %rdi
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        ## xmm1 = mem[0],zero
	movb	$2, %al
	callq	_printf
	leaq	_proc_3(%rip), %rdx
	leaq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	movl	$1000, %ecx             ## imm = 0x3E8
	movq	%rdi, -72(%rbp)         ## 8-byte Spill
	movq	%rdx, %rdi
	movq	-72(%rbp), %rdx         ## 8-byte Reload
	movl	%eax, -76(%rbp)         ## 4-byte Spill
	callq	_function_runner
	leaq	L_.str3(%rip), %rdi
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        ## xmm1 = mem[0],zero
	movb	$2, %al
	callq	_printf
	leaq	_proc_4(%rip), %rdx
	leaq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	movl	$1000, %ecx             ## imm = 0x3E8
	movq	%rdi, -88(%rbp)         ## 8-byte Spill
	movq	%rdx, %rdi
	movq	-88(%rbp), %rdx         ## 8-byte Reload
	movl	%eax, -92(%rbp)         ## 4-byte Spill
	callq	_function_runner
	leaq	L_.str4(%rip), %rdi
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        ## xmm1 = mem[0],zero
	movb	$2, %al
	callq	_printf
	leaq	_proc_5(%rip), %rdx
	leaq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	movl	$1000, %ecx             ## imm = 0x3E8
	movq	%rdi, -104(%rbp)        ## 8-byte Spill
	movq	%rdx, %rdi
	movq	-104(%rbp), %rdx        ## 8-byte Reload
	movl	%eax, -108(%rbp)        ## 4-byte Spill
	callq	_function_runner
	leaq	L_.str5(%rip), %rdi
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        ## xmm1 = mem[0],zero
	movb	$2, %al
	callq	_printf
	leaq	_proc_6(%rip), %rdx
	leaq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	movl	$1000, %ecx             ## imm = 0x3E8
	movq	%rdi, -120(%rbp)        ## 8-byte Spill
	movq	%rdx, %rdi
	movq	-120(%rbp), %rdx        ## 8-byte Reload
	movl	%eax, -124(%rbp)        ## 4-byte Spill
	callq	_function_runner
	leaq	L_.str6(%rip), %rdi
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        ## xmm1 = mem[0],zero
	movb	$2, %al
	callq	_printf
	leaq	_proc_7(%rip), %rdx
	leaq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	movl	$1000, %ecx             ## imm = 0x3E8
	movq	%rdi, -136(%rbp)        ## 8-byte Spill
	movq	%rdx, %rdi
	movq	-136(%rbp), %rdx        ## 8-byte Reload
	movl	%eax, -140(%rbp)        ## 4-byte Spill
	callq	_function_runner
	leaq	L_.str7(%rip), %rdi
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        ## xmm1 = mem[0],zero
	movb	$2, %al
	callq	_printf
	xorl	%ecx, %ecx
	movl	%eax, -144(%rbp)        ## 4-byte Spill
	movl	%ecx, %eax
	addq	$144, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"0:\nMean: %f\nStand: %f\n"

L_.str1:                                ## @.str1
	.asciz	"1:\nMean: %f\nStand: %f\n"

L_.str2:                                ## @.str2
	.asciz	"2:\nMean: %f\nStand: %f\n"

L_.str3:                                ## @.str3
	.asciz	"3:\nMean: %f\nStand: %f\n"

L_.str4:                                ## @.str4
	.asciz	"4:\nMean: %f\nStand: %f\n"

L_.str5:                                ## @.str5
	.asciz	"5:\nMean: %f\nStand: %f\n"

L_.str6:                                ## @.str6
	.asciz	"6:\nMean: %f\nStand: %f\n"

L_.str7:                                ## @.str7
	.asciz	"7:\nMean: %f\nStand: %f\n"

	.comm	_debug_on,4,2           ## @debug_on

.subsections_via_symbols
