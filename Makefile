NAME = libasm.a
EXEC = libasm

SRCS = $(addprefix srcs/ft_, $(addsuffix .s, \
	strlen))
OBJS = $(SRCS:.s=.o)
DEPS = $(SRCS:.s=.d)

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

run: $(NAME)
	gcc -Wall -Wextra -Werror main.c -L. -lasm -o $(EXEC)

clean:
	$(RM) $(OBJS) $(DEPS)

fclean: clean
	$(RM) $(NAME)
	$(RM) $(EXEC)

re: fclean all

.PHONY: all clean fclean re