/*
 * AssemblyFunctions.S
 *
 *  Created on: Mar 20, 2015
 *      Author: yozturk
 */

.global	_upper
_upper:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x20, %esp

	xorl	%eax, %eax
	movl	8(%ebp), %eax
	cmp		$0x61, %eax
	jle		nochange
	cmp		$0x7A, %eax
	jg		nochange
	subl	$0x20, %eax

nochange:
	movl	%ebp, %esp
	popl	%ebp
	ret


.global	_computeMagicNumber
_computeMagicNumber:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$0x20, %esp
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	movb	8(%ebp), %dl
while:
	movl	%edx, %ecx
	inc		%edx
	xorl	%edi, %edi
	cmp		%edi, %ecx
	je		exit
	addl	$0x01, %esi
	movl	%ecx, (%esp)
	call 	_upper
	movl	%eax, %ecx
	andl	$0x0F, %ecx
	imull	%esi, %ecx
	addl	%ecx, %ebx
	jmp		while
exit:
	xorl	%eax, %eax
	xorl	%edx, %edx
	addl	$0x03E8, %eax
	idivl	%ebx
	movl	%edx, %eax
	movl	%ebp,%esp
	popl	%ebp
	ret












