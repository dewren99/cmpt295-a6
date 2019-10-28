	.file	"lsearch_2.c"
	.text
	.p2align 4,,15
	.globl	lsearch_2
	.type	lsearch_2, @function
lsearch_2:
.LFB0:
	.cfi_startproc
	testl	%esi, %esi
	jle	.L6
	movslq	%esi, %rax
	leaq	-4(%rdi,%rax,4), %rax
	movl	(%rax), %r9d
	movl	%edx, (%rax)
	cmpl	(%rdi), %edx
	je	.L7
	movl	$1, %ecx
	.p2align 4,,10
	.p2align 3
.L5:
	movl	%ecx, %r8d
	addq	$1, %rcx
	cmpl	%edx, -4(%rdi,%rcx,4)
	jne	.L5
.L4:
	movl	%r9d, (%rax)
	leal	-1(%rsi), %eax
	cmpl	%r8d, %eax
	jg	.L8
	cmpl	%edx, %r9d
	jne	.L6
	rep ret
	.p2align 4,,10
	.p2align 3
.L8:
	movl	%r8d, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	xorl	%r8d, %r8d
	jmp	.L4
.L6:
	movl	$-1, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	lsearch_2, .-lsearch_2
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
