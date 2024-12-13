NAME 	=	libft.a
CC		=	cc
CFLAGS	=	-Wall -Wextra -Werror -Iinc

SDIR	:=	src/
ODIR	:=	obj/

SRC 	:=	$(SDIR)ft_isalpha.c\
			$(SDIR)ft_isdigit.c\
			$(SDIR)ft_isalnum.c\
			$(SDIR)ft_isascii.c\
			$(SDIR)ft_isprint.c\
			$(SDIR)ft_strlen.c\
			$(SDIR)ft_strlcpy.c\
			$(SDIR)ft_strlcat.c\
			$(SDIR)ft_atoi.c\
			$(SDIR)ft_bzero.c\
			$(SDIR)ft_memset.c\
			$(SDIR)ft_memcpy.c\
			$(SDIR)ft_memmove.c\
			$(SDIR)ft_toupper.c\
			$(SDIR)ft_tolower.c\
			$(SDIR)ft_strchr.c\
			$(SDIR)ft_strrchr.c\
			$(SDIR)ft_strncmp.c\
			$(SDIR)ft_memchr.c\
			$(SDIR)ft_memcmp.c\
			$(SDIR)ft_strnstr.c\
			$(SDIR)ft_calloc.c\
			$(SDIR)ft_strdup.c\
			$(SDIR)ft_substr.c\
			$(SDIR)ft_strjoin.c\
			$(SDIR)ft_strtrim.c\
			$(SDIR)ft_itoa.c\
			$(SDIR)ft_strmapi.c\
			$(SDIR)ft_striteri.c\
			$(SDIR)ft_putchar_fd.c\
			$(SDIR)ft_putstr_fd.c\
			$(SDIR)ft_putendl_fd.c\
			$(SDIR)ft_split.c\
			$(SDIR)ft_putnbr_fd.c

# Bonus files
B_SRC 	:=	$(SDIR)ft_lstnew.c\
			$(SDIR)ft_lstadd_front.c\
			$(SDIR)ft_lstsize.c\
			$(SDIR)ft_lstlast.c\
			$(SDIR)ft_lstadd_back.c\
			$(SDIR)ft_lstdelone.c\
			$(SDIR)ft_lstclear.c\
			$(SDIR)ft_lstiter.c\
			$(SDIR)ft_lstmap.c\
			$(SRC)

OBJ 	:=	$(patsubst $(SDIR)%.c, $(ODIR)%.o, $(SRC))
B_OBJ	:=	$(patsubst $(SDIR)%.c, $(ODIR)%.o, $(B_SRC))

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

$(ODIR)%.o: $(SDIR)%.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

bonus: $(B_OBJ)
	ar rcs $(NAME) $(B_OBJ)

clean:
	rm -f $(OBJ) $(B_OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean $(NAME)
