# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ddo-carm <ddo-carm@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/25 12:13:34 by ddo-carm          #+#    #+#              #
#    Updated: 2024/11/05 16:05:51 by ddo-carm         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CFLAGS = -Wall -Wextra -Werror
HEADERS = ./libft
SRCS_D = .

#source files
SRC = $(SRCS_D)/ft_isalpha.c \
	$(SRCS_D)/ft_isdigit.c \
	$(SRCS_D)/ft_isalnum.c \
	$(SRCS_D)/ft_isascii.c \
	$(SRCS_D)/ft_isprint.c \
	$(SRCS_D)/ft_strlen.c \
	$(SRCS_D)/ft_memset.c \
	$(SRCS_D)/ft_bzero.c \
	$(SRCS_D)/ft_memcpy.c \
	$(SRCS_D)/ft_memmove.c \
	$(SRCS_D)/ft_strlcpy.c \
	$(SRCS_D)/ft_strlcat.c \
	$(SRCS_D)/ft_toupper.c \
	$(SRCS_D)/ft_tolower.c \
	$(SRCS_D)/ft_strchr.c \
	$(SRCS_D)/ft_strrchr.c \
	$(SRCS_D)/ft_strncmp.c \
	$(SRCS_D)/ft_memchr.c \
	$(SRCS_D)/ft_memcmp.c \
	$(SRCS_D)/ft_strnstr.c \
	$(SRCS_D)/ft_atoi.c \
	$(SRCS_D)/ft_calloc.c \
	$(SRCS_D)/ft_strdup.c \
	$(SRCS_D)/ft_substr.c \
	$(SRCS_D)/ft_strjoin.c \
	$(SRCS_D)/ft_itoa.c \
	$(SRCS_D)/ft_strmapi.c \
	$(SRCS_D)/ft_striteri.c \
	$(SRCS_D)/ft_putchar_fd.c \
	$(SRCS_D)/ft_putstr_fd.c \
	$(SRCS_D)/ft_putendl_fd.c \
	$(SRCS_D)/ft_putnbr_fd.c \
	$(SRCS_D)/ft_strtrim.c \
	$(SRCS_D)/ft_split.c \

BONUS = $(SRCS_D)/ft_lstnew_bonus.c \
		$(SRCS_D)/ft_lstadd_front_bonus.c \
		$(SRCS_D)/ft_lstsize_bonus.c \
		$(SRCS_D)/ft_lstlast_bonus.c \
		$(SRCS_D)/ft_lstadd_back_bonus.c \
		$(SRCS_D)/ft_lstdelone_bonus.c \
		$(SRCS_D)/ft_lstclear_bonus.c \
		$(SRCS_D)/ft_lstiter_bonus.c \
		$(SRCS_D)/ft_lstmap_bonus.c 

#object files
OBJ = $(SRC:.c=.o)
BONUS_OBJ = $(BONUS:.c=.o)

all: $(NAME)

#compile the lib
$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

#compile lib with bonus
bonus: $(OBJ) $(BONUS_OBJ)
	ar rcs $(NAME) $(OBJ) $(BONUS_OBJ)

#compile .o files
%.o: %.c
	cc $(CFLAGS) -I $(HEADERS) -c $< -o $@

#remove .o
clean:
	rm -f $(OBJ) $(BONUS_OBJ)

#clean and remove
fclean: clean
	rm -f $(NAME)
	
#remake
re: fclean all

#Phony targets to avoid clashes
.PHONY: all clean fclean re
