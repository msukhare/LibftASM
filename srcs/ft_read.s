# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_read.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: msukhare <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/27 18:59:22 by msukhare          #+#    #+#              #
#    Updated: 2020/01/27 20:13:01 by msukhare         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global		_ft_read

section		.text

_ft_read:
	push	rbp
	mov	rbp, rsp
	mov	rax, 0x2000003
	syscall
	mov	rsp, rbp
	pop	rbp
	ret
