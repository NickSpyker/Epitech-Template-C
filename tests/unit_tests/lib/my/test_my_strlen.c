/*
** EPITECH PROJECT, 2023
** Test
** File description:
** test_my_strlen.c
*/

#include <criterion/criterion.h>

int my_strlen(char const *str);

Test(my_strlen, should_return_0)
{
    char *str = "";

    cr_assert_eq(my_strlen(str), 0);
}

Test(my_strlen, should_return_5)
{
    char *str = "Hello";

    cr_assert_eq(my_strlen(str), 5);
}

Test(my_strlen, should_return_neg_1)
{
    char *str = NULL;

    cr_assert_eq(my_strlen(str), -1);
}
