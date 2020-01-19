#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int	ft_strlen(const char *str);
char	*ft_strcpy(char *dest, const char *src);
int		ft_strcmp(const char *s1, const char *s2);

int	main(void)
{
	char	s1[13] = "hello world!";
	char	s2[13] = "hello world!";

	printf("%d\n", ft_strcmp(s1, s2));
	/*
	char	*ret__;

	ret__ = malloc(6);
	ret__[0] = 'a';
	ret__[1] = 'a';
	ret__[2] = 'a';
	ret__[3] = 'a';
	ret__[4] = 'a';
	ret__[5] = '\0';
	printf("before = %s\n", ret__);
	printf("len = %d\n", ft_strlen(ret__));
	printf("after= %s\n", ret__);

	char	ert[13] = "hello world!";

	printf("before = %s\n", ert);
	printf("len = %d\n", ft_strlen(ert));
	printf("after= %s\n", ert);

	printf("len = %d\n", ft_strlen("hello world!"));

	char	buff[13];
	char	*ret;

	ret = ft_strcpy(buff, "hello world!");
	printf("static=%s,%s\n", buff, ret);
	printf("static=%d,%d\n\n", buff[12], ret[12]);


	char	*ret_;
	char	*malloced;

	malloced = (char *)malloc(13);
	ret_ = ft_strcpy(malloced, "hello world!");
	printf("dynamique=%s,%s\n", malloced, ret_);
	printf("dynamique=%d,%d\n\n", malloced[12], ret_[12]);

	char	tmp[13] = "hello world!";
	char	tmp1[13];

	ret_ = ft_strcpy(tmp1, tmp);
	printf("static=%s,%s,%s\n", tmp1, ret_, tmp);
	printf("static=%d,%d,%d\n\n", tmp1[12], ret_[12], tmp[12]);

	char	*tmp_alloc;
	char	*tmp1_alloc;

	tmp1_alloc = malloc(6);
	tmp_alloc = malloc(6);
	tmp_alloc[0] = 'a';
	tmp_alloc[1] = 'a';
	tmp_alloc[2] = 'a';
	tmp_alloc[3] = 'a';
	tmp_alloc[4] = 'a';
	tmp_alloc[5] = '\0';

	ret_ = ft_strcpy(tmp1_alloc, tmp_alloc);
	printf("static=%s,%s,%s\n", tmp1_alloc, ret_, tmp_alloc);
	printf("static=%d,%d,%d\n\n", tmp1_alloc[12], ret_[12], tmp_alloc[12]);
	*/
	return (0);
}
