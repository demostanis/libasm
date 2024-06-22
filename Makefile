AR = ar rcs
AS = nasm
ASFLAGS = -felf64
CFLAGS = -Wall -Wextra -Werror -g -no-pie

NAME = libasm.a

OBJECTS = ft_strlen.o \
		  ft_strcpy.o \
		  ft_strcmp.o \
		  ft_write.o \
		  ft_read.o \
		  ft_strdup.o

all: $(NAME)

$(NAME): $(OBJECTS)
	$(AR) $@ $^

clean:
	$(RM) $(OBJECTS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

tests: all
	$(CC) $(CFLAGS) $@.c -o $@ $(NAME)
	./$@
	$(RM) ./$@

.PHONY: all clean fclean re tests
