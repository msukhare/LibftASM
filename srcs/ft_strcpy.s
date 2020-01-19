global		_ft_strcpy
extern		_ft_strlen

section		.text

_ft_strcpy:
	push	rbp
	mov		rbp, rsp

	push	rdi
	push	rsi

	mov		rdi, rsi
	call	_ft_strlen
	mov		rcx, rax

	mov		rdi, [rbp - 8]
	mov		rsi, [rbp - 16]
	mov		byte [rdi + rcx], 0

	rep		movsb
	mov		rax, [rbp - 8]

	pop		rsi
	pop		rdi

	mov		rsp, rbp
	pop		rbp
	ret
