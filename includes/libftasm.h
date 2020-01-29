/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libftasm.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: msukhare <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/27 20:22:04 by msukhare          #+#    #+#             */
/*   Updated: 2020/01/29 16:50:41 by msukhare         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTASM_H
# define LIBFTASM_H

typedef struct		s_list
{
	void			*data;
	struct s_list	*next;
}					t_list;

int					ft_strlen(const char *str);
char				*ft_strcpy(char *dest, const char *src);
int					ft_strcmp(const char *s1, const char *s2);
ssize_t				ft_write(int fd, const void	*buf, size_t count);
ssize_t				ft_read(int fd, void *buf, size_t count);
char				*ft_strdup(const char *s);
int					ft_list_size(t_list *begin_list);
void				*ft_list_push_front(t_list **begin_list, void *data);
void				ft_list_remove_if(t_list **begin_list, void *data_ref, int (*cmp)());
# endif


