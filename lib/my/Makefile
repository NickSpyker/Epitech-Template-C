##
## EPITECH PROJECT, 2023
## Makefile
## File description:
## lib/my/Makefile
##

CFLAGS = -W -Wall -Wextra -Werror -Wpedantic

SRC = $(wildcard *.c)

OBJ = $(SRC:.c=.o)

NAME = libmy.a

all: $(NAME)

$(NAME): $(OBJ)
	ar src $(NAME) $(OBJ)
	cp $(NAME) ..

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME) ../$(NAME)

re: fclean all
