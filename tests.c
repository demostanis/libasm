#include <stdio.h>
#include <assert.h>
#include <errno.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include "libasm.h"

void	test_strlen(void)
{
	assert(ft_strlen("hello") == 5);
	assert(ft_strlen("") == 0);
}

void	test_strcpy(void)
{
	char	dest[10];
	char	*alsodest;

	ft_strcpy(dest, "hello");
	assert(ft_strcmp(dest, "hello") == 0);
	alsodest = ft_strcpy(dest, "");
	assert(ft_strcmp(alsodest, "") == 0);
	ft_strcpy(dest, "bybyby");
	assert(ft_strcmp(dest, "bybyby") == 0);
}

void	test_strcmp(void)
{
	assert(ft_strcmp("helo", "helo") == 0);
	assert(ft_strcmp("help", "helo") == 1);
}

void	test_write(void)
{
	ssize_t	n;

	n = ft_write(13, "Hello, world!\n", 15);
	assert(n == -1);
	assert(errno != 0);
	n = ft_write(1, "Hello, world!\n", 15);
	assert(n == 15);
	assert(errno == 0);
}

void	test_read(void)
{
	char	buf[35];
	ssize_t	n;
	int		fd;

	fd = open("/etc/passwd", O_RDONLY);
	n = ft_read(fd, buf, sizeof buf);
	buf[n-1] = 0;
	assert(errno == 0);
	assert(ft_strcmp(buf, "root:x:0:0:root:/root:/usr/bin/zsh") == 0);
	n = ft_read(69, buf, sizeof buf);
	assert(n == -1);
	assert(errno != 0);
}

void	test_strdup(void)
{
	char	*str;

	str = ft_strdup("helo");
	assert(ft_strcmp(str, "helo") == 0);
	free(str);
	str = ft_strdup("");
	assert(ft_strcmp(str, "") == 0);
	free(str);
}

int	main(void)
{
	test_strlen();
	test_strcpy();
	test_strcmp();
	test_write();
	test_read();
	test_strdup();
}
