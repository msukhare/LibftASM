global		_ft_strcmp

section		.text

_ft_strcmp:
	push	rbp
	mov		rbp, rsp

	rep		cmpsb
	sub		rdi, rsi

	mov		rsp, rbp
	pop		rbp
	ret
