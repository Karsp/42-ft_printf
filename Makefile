# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: daviles- <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/10 16:39:43 by daviles-          #+#    #+#              #
#    Updated: 2024/03/03 01:11:12 by daviles-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRC = ft_printf.c \
	  ft_printf_utils.c

OBJ = $(SRC:.c=.o)

CC	= gcc

CFLAGS = -Wall -Wextra -Werror

AR = ar rcs

RM = rm -f

all : $(NAME)

$(NAME) : $(OBJ) 
	$(AR) $(NAME) $(OBJ)

%.o : %.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean :
	$(RM) $(OBJ)

fclean : clean
	$(RM) $(NAME)


re : fclean all

.PHONY : all NAME clean fclean re 
