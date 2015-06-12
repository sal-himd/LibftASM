# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sal-himd <sal-himd@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/11/03 22:54:42 by sal-himd          #+#    #+#              #
#    Updated: 2014/11/09 18:35:47 by sal-himd         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libfts.a

SRC		+= ft_bzero.s
SRC		+= ft_isdigit.s
SRC		+= ft_islower.s
SRC		+= ft_isupper.s
SRC		+= ft_isalpha.s
SRC		+= ft_isalnum.s
SRC		+= ft_isascii.s
SRC		+= ft_isprint.s
SRC		+= ft_toupper.s
SRC		+= ft_tolower.s
SRC		+= ft_strcat.s
SRC		+= ft_strcpy.s
SRC		+= ft_strlen.s
SRC		+= ft_puts.s
SRC		+= ft_putstr.s
SRC		+= ft_memset.s
SRC		+= ft_memcpy.s
SRC		+= ft_strdup.s
SRC		+= ft_cat.s
SRC		+= ft_ispunct.s

OBJ		+= $(subst .s,.o,$(SRC))

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $@ $^
	ranlib $@  

%.o: %.s
	nasm -Wall -Werror -f macho64 $<

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all

