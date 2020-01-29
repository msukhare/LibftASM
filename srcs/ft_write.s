# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_write.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: msukhare <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/27 18:31:28 by msukhare          #+#    #+#              #
#    Updated: 2020/01/28 15:01:39 by msukhare         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global		_ft_write

section		.text

_ft_write:
	push	rbp
	mov		rbp, rsp
	mov		rax, 0x2000004
	syscall
	jc		fail
	jmp		epilogue

fail:
	mov		rax, -1
	jmp		epilogue

epilogue:
	mov		rsp, rbp
	pop		rbp
	ret
