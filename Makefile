# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mle-roy <mle-roy@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/01/12 19:21:21 by mle-roy           #+#    #+#              #
#    Updated: 2014/01/12 19:21:37 by mle-roy          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=ft_select

VERSION=1.0.7

SRC=ft_error.c \
	ft_select.c \
	se_delelem.c \
	se_end.c \
	se_feat.c \
	se_move.c \
	se_operations.c \
	se_print.c \
	se_set_arg.c \
	se_signal.c \
	se_singleton.c \
	sig_kill.c \

OBJ=$(SRC:.c=.o)

CFLAGS=-Wall -Werror -Wextra

all: build $(NAME) finish

build:
	@($(MAKE) -C ./libft)

$(NAME): $(OBJ) ./libft/
	gcc $(CFLAGS) -o $(NAME) -I ./libft/includes -L ./libft -lft $(OBJ) \
	-L /usr/lib -ltermcap

ft_error.o: ft_error.c ./libft/includes/libft.h
	gcc $(CFLAGS) -I ./libft/includes -o $@ -c $<

ft_select.o: ft_select.c ./libft/includes/libft.h ./ft_select.h
	gcc $(CFLAGS) -I ./libft/includes -I . -o $@ -c $<

se_delelem.o: se_delelem.c ./ft_select.h
	gcc $(CFLAGS) -I . -o $@ -c $<

se_end.o: se_end.c ./libft/includes/libft.h ./ft_select.h
	gcc $(CFLAGS) -I ./libft/includes -I . -o $@ -c $<

se_feat.o: se_feat.c ./ft_select.h
	gcc $(CFLAGS) -I . -o $@ -c $<

se_move.o: se_move.c ./ft_select.h ./libft/includes/libft.h
	gcc $(CFLAGS) -I . -I ./libft/includes -o $@ -c $<

se_operations.o: se_operations.c ./ft_select.h ./libft/includes/libft.h
	gcc $(CFLAGS) -I . -I ./libft/includes -o $@ -c $<

se_print.o: se_print.c ./libft/includes/libft.h ./ft_select.h
	gcc $(CFLAGS) -I ./libft/includes -I . -o $@ -c $<

se_set_arg.o: se_set_arg.c ./ft_select.h ./libft/includes/libft.h
	gcc $(CFLAGS) -I . -I ./libft/includes -o $@ -c $<

se_signal.o: se_signal.c ./ft_select.h
	gcc $(CFLAGS) -I . -o $@ -c $<

se_singleton.o: se_singleton.c ./ft_select.h
	gcc $(CFLAGS) -I . -o $@ -c $<

sig_kill.o: sig_kill.c ./ft_select.h
	gcc $(CFLAGS) -I . -o $@ -c $<

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all

v:
	@(echo "version: $(VERSION)")

finish:
	@(echo "[\033[32m$(NAME)\033[00m]\tis created!")

.PHONY: finish v re fclean clean all build
