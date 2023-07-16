NAME = libasm.a
EXEC = libasm

SRCS = $(addprefix srcs/ft_, $(addsuffix .s, \
	strlen))
OBJS = $(SRCS:.s=.o)
DEPS = $(SRCS:.s=.d)

CC = gcc
CFLAGS = -Wall -Wextra -Werror

AS = nasm
ASFLAGS = -f elf64

AR = ar
ARFLAGS = rcs

RM = rm -f

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(ARFLAGS) $@ $^

%.o: %.s
	$(AS) $(ASFLAGS) $< -o $@ -MD -MP -MF $(<:.s=.d)

-include $(DEPS)

exec: $(NAME)
	$(CC) $(CFLAGS) -Iincludes main.c -L. -lasm -o $(EXEC)

run: exec
	./$(EXEC)

clean:
	$(RM) $(OBJS) $(DEPS)

fclean: clean
	$(RM) $(NAME)
	$(RM) $(EXEC)

re: fclean all

.PHONY: all clean fclean re