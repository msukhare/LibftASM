# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_list_push_front.s                               :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: msukhare <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/29 14:34:35 by msukhare          #+#    #+#              #
#    Updated: 2020/01/29 15:41:33 by msukhare         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global		_ft_list_push_front
extern		_malloc

section		.text

_ft_list_push_front:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 16

	push	rsi
	push	rdi

	test	rdi, rdi
	jz		epilogue

	mov		rdi, 16
	call	_malloc
	test	rax, rax
	jz		fail_malloc

	pop		rdi
	pop		rsi
	mov		[rax], rsi
	mov		r8, [rdi]
	mov		[rax + 8], r8
	mov		[rdi], rax

	jmp		epilogue

fail_malloc:
	pop		rdi
	pop		rsi
	jmp		epilogue

epilogue:
	add		rsp, 16
	mov		rsp, rbp
	pop		rbp
	ret
