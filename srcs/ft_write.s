# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_write.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: msukhare <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/27 18:31:28 by msukhare          #+#    #+#              #
#    Updated: 2020/01/27 20:14:12 by msukhare         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global		_ft_write

section		.text

_ft_write:
	push	rbp
	mov	rbp, rsp
	mov	rax, 0x2000004
	syscall
	mov	rsp, rbp
	pop	rbp
	ret
