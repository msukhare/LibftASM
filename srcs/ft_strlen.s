# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: msukhare <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/27 18:30:28 by msukhare          #+#    #+#              #
#    Updated: 2020/01/27 20:13:45 by msukhare         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global		_ft_strlen

section		.text

_ft_strlen:
	push	rbp
	mov	rbp, rsp
	push	rcx
	mov	r8, rdi
	mov	al, 0
	mov	rcx, 0xffffffff
	repne	scasb
	sub	rdi, r8
	dec	rdi
	mov	rax, rdi
	pop	rcx
	mov	rsp, rbp
	pop	rbp
	ret
