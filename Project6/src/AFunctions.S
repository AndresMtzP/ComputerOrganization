/*
 * AFunctions.s
 *
 *  Please rename this file as Homework6_yourReadID.s  and submit only this file
 */

.global _isNumber
_isNumber:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$0x16,%esp
	//
	// body of function
	xorl	%eax, %eax
	movl	8(%ebp), %ebx
	movb	(%ebx), %cl
	movb	$0x30, %dl
	movb	$0x39, %dh
	cmp 	%cl, %dl
	jl		noDig
	cmp		%cl, %dh
	jg		noDig
	inc		%eax
noDig:
	//exit code
	movl	%ebp,%esp
	popl	%esp
	ret



.global _compare
_compare:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$0x16,%esp
	//
	// body of function
	xorl	%eax, %eax
	movl	8(%ebp), %ebx
	movl	12(%ebp), %ecx
	cmp		%ebx, %ecx
	jg		ebLess
	inc		%eax
	jmp		return
ebLess:
	cmp 	%ebx, %ecx
	jle		label2
	dec		%eax
return:
	movl	%ebp,%esp
	popl	%esp
	ret



.global _countOnes
_countOnes:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$0x16,%esp
	//
	// body of functions
	xorb	%cl, %cl
	xorl	%eax, %eax
loop:
	movl	8(%ebp), %ebx
	shrl	%cl, %ebx
	andl	$0x1, %ebx
	cmp		$0x01, %ebx
	jne		noInc
	inc		%eax
noInc:
	inc		%cl
	cmp		$0x20, %cl
	jle		loop

	movl	%ebp,%esp
	popl	%esp
	ret



.global _returnHammingDistance
_returnHammingDistance:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$0x16,%esp
	//
	// function body
	movb	8(%ebp), %bl
	movb	9(%ebx), %bh
	xorb	%bl, %bh
	xorb	%cl, %cl
	xorl 	%eax, %eax
	xorl	%edx, %edx
hamLoop:
	movb	%bh, %dl
	shrl	%cl, %edx
	andl	$0x1, %edx
	cmp		$0x1, %edx
	jne		hamNoInc
	inc		%eax
hamNoInc:
	inc		%cl
	cmp		$0x20, %cl
	jle		hamLoop

	movl	%ebp,%esp
	popl	%esp
	ret






