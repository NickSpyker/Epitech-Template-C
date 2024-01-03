##
## EPITECH PROJECT, 2023
## Unit Tests
## File description:
## Makefile
##

SRC = $(shell find .. -type f -name "*.c" -not -name "main.c")

NAME = unit_test

all: $(NAME)

$(NAME):
	$(CC) -o $(NAME) $(SRC) --coverage -lcriterion

clean:
	$(RM) *.gcno *.gcda

fclean: clean
	$(RM) $(NAME)

re: fclean all
