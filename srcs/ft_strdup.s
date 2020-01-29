# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: msukhare <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/28 17:18:20 by msukhare          #+#    #+#              #
#    Updated: 2020/01/29 11:57:02 by msukhare         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global		_ft_strdup
extern		_ft_strlen
extern		_malloc
extern		_ft_strcpy

section		.text

_ft_strdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 8
	push	rdi
	test	rdi, rdi
	jz	return_null
	call	_ft_strlen
	inc	rax
	mov	rdi, rax
	call	_malloc
	test	rax, rax
	jz	return_null
	pop	rdi
	mov	rsi, rdi
	mov	rdi, rax
	call	_ft_strcpy
	jmp	epilogue

return_null:
	mov	rax, 0
	pop	rdi
	jmp	epilogue

epilogue:
	add	rsp, 8
	mov	rsp, rbp
	pop	rbp
	ret
