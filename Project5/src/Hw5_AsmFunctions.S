/*
 * Assembly.S
 */

.global	_toBigEndian
_toBigEndian:


/* Function entry code */
	pushl 	%ebp
	movl 	%esp, %ebp
	subl	$16, %esp
	
/* Function body */
	movl	8(%ebp), %eax
	shll	$24, %eax
	movl	8(%ebp), %ebx
	shrl	$8, %ebx
	shll	$24, %ebx
	shrl	$8, %ebx
	addl	%ebx, %eax
	movl	8(%ebp), %ebx
	shrl	$16, %ebx
	shll	$24, %ebx
	shrl	$16, %ebx
	addl	%ebx, %eax
	movl	8(%ebp), %ebx
	shrl	$24, %ebx
	addl	%ebx, %eax

/* Function exit code */
	movl 	%ebp, %esp
	popl 	%ebp
	ret

	
	
	
.global	_isLittleEndian
_isLittleEndian:


/* Function entry code */
	pushl 	%ebp
	movl 	%esp, %ebp
	subl	$16, %esp
	
/* Function body */
	xorl 	%eax, %eax
	movl	8(%ebp), %ebx
	shll	$24, %ebx
	shrl	$24, %ebx
	movb	8(%ebp), %cl
	cmp		%cl, %bl
	jne		notLit
	inc		%eax
notLit:
	
/* Function exit code */
	movl 	%ebp, %esp
	popl 	%ebp
	ret
