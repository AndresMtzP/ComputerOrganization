
.global _toPostFix
_toPostFix:

	pushl	%ebp
	movl	%esp,%ebp

	movl	8(%ebp),%ebx
	xorl	%eax,%eax
	movl	12(%ebp),%eax
	xorl	%esi,%esi
	xorl	%edi,%edi
start1:
	cmp		$0x00,(%ebx,%esi,1)
	je		end1
	cmp		$0x2A,(%ebx,%esi,1)
	jl		noSign
	cmp		$0x2F,(%ebx,%esi,1)
	jle		Sign
noSign:
	movl	(%ebx,%esi,1),%ecx
	movl	%ecx,(%eax,%edi,1)
	inc		%edi
	inc		%esi
	jmp		start1
Sign:

	movl	%esp,%edx
	//set a signvalue for each sign and store them in ecx, and edx
	cmp		$0x2A,(%ebx,%esi,1)
	jne		notMul
	movl	$0x04,%ecx
	jmp		set2
notMul:
	cmp		$0x2F,(%ebx,%esi,1)
	jne		notDiv
	movl	$0x03,%ecx
	jmp		set2
notDiv:
	cmp		$0x2D,(%ebx,%esi,1)
	jne		notAdd
	movl	$0x02,%ecx
	jmp		set2
notAdd:
	movl	$0x01,%ecx
set2:
	cmp		$0x2A,%edx
	jne		notMul2
	movl	$0x04,%edx
	jmp		cmpSigns
notMul2:
	cmp		$0x2F,%edx
	jne		notDiv2
	movl	$0x03,%edx
	jmp		cmpSigns
notDiv2:
	cmp		$0x2D,%edx
	jne		notAdd2
	movl	$0x02,%edx
	jmp		cmpSigns
notAdd2:
	movl	$0x01,%edx
cmpSigns:
	cmp		%edx,%ecx
	jg		pushSign
	popl	(%eax,%edi,1)
	inc		%edi
	jmp		Sign
pushSign:
	pushl	(%ebx,%esi,1)
	inc		%esi
	jmp		start1
/////////////////////////////////////////////////////////////////////////////////////

end1:
	movl	16(%ebp),%ecx
	movl	%ecx,(%eax,%edi,1)
	popl	%ebp
	ret


.global _toInFix
_toInFix:

	pushl	%ebp
	movl	%esp,%ebp

//
	movl	8(%ebp),%ebx
	xorl	%eax,%eax
	movl	12(%ebp),%eax
	xorl	%esi,%esi
	xorl	%edi,%edi
start2:
	cmp		$0x00,(%ebx,%esi,1)
	je		end2
	cmp		$0x2A,(%ebx,%esi,1)
	jl		noSign2
	cmp		$0x2F,(%ebx,%esi,1)
	jle		Sign2
Sign2:
	movl	(%ebx,%esi,1),%ecx
	movl	%ecx,(%eax,%edi,1)
	inc		%edi
	inc		%esi
	jmp		start2
noSign2:
	cmp		$0x2A,%ecx
	jne		pushTerm
popTerm:
	popl	(%eax,%edi,1)
	inc		%edi
	jmp		start2
pushTerm:
	pushl	(%ebx,%esi,1)
	inc		%esi
	jmp		start2
end2:
	movl	16(%ebp),%ecx
	movl	%ecx,(%eax,%edi,1)
	popl	%ebp
	ret
