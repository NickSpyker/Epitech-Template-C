##
## EPITECH PROJECT, 2023
## Makefile
## File description:
## Makefile
##

CFLAGS = -W -Wall -Wextra -Werror

CPPFLAGS = -I./include

SRC = ./src/main.c \
      ./src/utils.c

OBJ = $(SRC:.c=.o)

NAME = execute

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(OBJ) -o $(NAME)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all
