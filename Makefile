# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: joaooli2 <joaooli2@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/11/03 15:51:45 by joaooli2          #+#    #+#              #
#    Updated: 2026/11/17 12:00:01 by joaooli2         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = ft_printf.a

SCRS = 
		
OBJS = $(SCRS:.c=.o)

.c.o:
	$(CC) $(CFLAGS) -c $< -o $(<:.c=.o)

CC = cc
RM = rm -f
CFLAGS= -Wextra -Wall -Werror

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

all: $(NAME)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

bonus: all

re: fclean all

test: all
	$(CC) $(FLAGS) main.c $(NAME)

leaks:
	$(CC) -g $(FLAGS) main.c $(NAME)
	valgrind --leak-check=full --show-leak-kinds=all ./a.out

.PHONY: all clean fclean bonus re test leaks
