global		_ft_strlen

section		.text

_ft_strlen:
	push	rbp
	mov		rbp, rsp
	push	rcx
	mov		r8, rdi
	mov		al, 0
	mov		rcx, 0xffffffff
	repne	scasb
	sub		rdi, r8
	dec		rdi
	mov		rax, rdi
	pop		rcx
	mov		rsp, rbp
	pop		rbp
	ret
