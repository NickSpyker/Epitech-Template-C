/*
** EPITECH PROJECT, 2023
** Lib Function
** File description:
** my_strlen.c
*/

#include <stddef.h>

int my_strlen(char const *str)
{
    int length = 0;

    if (str == NULL) {
        return -1;
    }

    while (str[length] != '\0') {
        length += 1;
    }

    return length;
}
