global		_ft_strcmp
extern		_ft_strlen

section		.text

_ft_strcmp:
	push	rbp
	mov	rbp, rsp
	push	rdi
	push	rsi
	call	_ft_strlen
	mov	r9, rax
	mov	rdi, [rbp - 16]
	call	_ft_strlen
	mov	r10, rax
	cmp	r9, r10
	jle	s_one_inf
	jge	s_one_sup

s_one_inf:
	mov	rcx, r10
	jmp	end

s_one_sup:
	mov	rcx, r9
	jmp	end

end:
	mov	rdi, [rbp - 8]
	mov	rsi, [rbp - 16]
	repe	cmpsb
	dec	rdi
	dec	rsi
	mov	byte al, [rdi]
	sub	al, [rsi]
	movsx	eax, al
	pop	rsi
	pop	rdi
	mov	rsp, rbp
	pop	rbp
	ret
