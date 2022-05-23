# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ybaudoui <ybaudoui@student.42angoulem      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/14 12:20:41 by ybaudoui          #+#    #+#              #
#    Updated: 2022/05/02 17:26:35 by ybaudoui         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libftprintf.a

SRCS	= ft_printf.c ft_putchar.c ft_putnbr.c ft_putstr.c ft_putnbr_u.c\
		  ft_puthexa_low.c ft_puthexa_upp.c ft_putptr.c

OBJS	= ${SRCS:.c=.o}

CC		= gcc

CFLAGS	= -Wall -Werror -Wextra

.c.o:
		${CC} ${CFLAGS} -c $< -o ${<:.c=.o} -L.

$(NAME):	${OBJS}
			ar rcs ${NAME} ${OBJS}

all :	${NAME}

clean : 
		rm -f $(OBJS)
	
fclean : clean
		rm -f $(NAME)

re : fclean all 

