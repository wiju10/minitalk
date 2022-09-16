# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wtan <wtan@student.42kl.edu.my>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/21 02:30:06 by wtan              #+#    #+#              #
#    Updated: 2022/03/30 02:34:31 by wtan             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 	=	libft.a

SRC		=	ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c \
			ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c ft_memchr.c \
			ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_putchar_fd.c \
			ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c ft_split.c \
			ft_strchr.c ft_strdup.c ft_striteri.c ft_strjoin.c ft_strlcat.c \
			ft_strlcpy.c ft_strlen.c ft_strmapi.c ft_strncmp.c ft_strnstr.c \
			ft_strtrim.c ft_strrchr.c ft_substr.c ft_tolower.c ft_toupper.c

OBJ		=	$(SRC:.c=.o)

CC		=	gcc

RM		=	rm -f

CFLAGS	=	-Wall -Wextra -Werror -I.

all:	$(NAME)

$(NAME):	$(OBJ)
				ar rcs $(NAME) $(OBJ)

clean:
				$(RM) $(OBJ)

fclean:	clean
				$(RM) $(NAME)

re:		fclean	$(NAME)