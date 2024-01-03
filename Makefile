##
## EPITECH PROJECT, 2023
## Makefile
## File description:
## Makefile
##

CFLAGS = -W -Wall -Wextra -Werror -Wpedantic

CPPFLAGS = -Iinclude

LDFLAGS = -lmy

SRC = src/main.c

OBJ = $(SRC:.c=.o)

NAME = execute

all: $(NAME)

$(NAME): $(OBJ)
	$(MAKE_COMMAND) -C lib
	$(CC) -o $(NAME) $(OBJ) -Llib $(LDFLAGS)

tests_run:
	$(MAKE_COMMAND) -C tests
	./tests/unit_test

coverage:
	$(MAKE_COMMAND) -C tests
	@clear && ./tests/unit_test
	@gcovr --exclude tests --branches

clean:
	$(MAKE_COMMAND) clean -C lib
	$(MAKE_COMMAND) clean -C tests
	$(RM) $(OBJ)

fclean: clean
	$(MAKE_COMMAND) fclean -C lib
	$(MAKE_COMMAND) fclean -C tests
	$(RM) $(NAME)

re: fclean all
