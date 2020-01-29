# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_list_size.s                                     :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: msukhare <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/29 13:51:09 by msukhare          #+#    #+#              #
#    Updated: 2020/01/29 14:33:39 by msukhare         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global		_ft_list_size

section		.text

_ft_list_size:
	push	rbp
	mov	rbp, rsp

	test	rdi, rdi
	jz	null_return

	mov	rcx, 0
	loop:
		inc	rcx
		mov	rdi, [rdi + 8]
		test	rdi, rdi
		jnz	loop
	mov	rax, rcx
	jmp	epilogue

null_return:
	mov	rax, 0
	jmp	epilogue

epilogue:
	mov	rsp, rbp
	pop	rbp
	ret
