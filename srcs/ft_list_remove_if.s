# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_list_remove_if.s                                :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: msukhare <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/29 16:41:34 by msukhare          #+#    #+#              #
#    Updated: 2020/01/29 16:50:40 by msukhare         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global		_ft_list_remove_if

section		.text

_ft_list_remove_if:
	push	rbp
	mov	rbp, rsp

	test	rdi, rdi
	jz	epilogue
	test	rsi, rsi
	jz	epilogue
	test	rdx, rdx
	jz	epilogue

	mov	r8, [rdi]
	mov	r9, 0

epilogue:
	mov		rsp, rbp
	pop		rbp
	ret
