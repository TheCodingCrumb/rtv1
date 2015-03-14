##
## Makefile for  in /home/perra_t
## 
## Made by tiphaine perra
## Login   <perra_t@epitech.net>
## 
## Started on  Fri Oct 24 19:00:03 2014 tiphaine perra
## Last update Sat Mar 14 17:44:25 2015 tiphaine perra
##

SRC	=	rt1.c \
		rotate.c \
		fct_int.c \
		gere.c

OBJS	=	$(SRC:.c=.o)

CFLAGS	+=	-I ./include/

CC	+=	-g -lm

LDFLAGS	+=	-L minilibx/   -L usr/lib64/X11

LDLIBS	+=	-lmlx -lXext -lX11

NAME	=	rt1

.PHONY:	all clean fclean re

all:	$(NAME)

$(NAME):$(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) $(OBJS) $(LDLIBS) -o $(NAME)

clean: 	
	$(RM) $(OBJS)

fclean:	clean
	$(RM) $(NAME)

re:	fclean all