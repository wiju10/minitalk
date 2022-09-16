NAME	:= server client

SRCS	:= server.c client.c

OBJS	:= $(SRCS:.c=.o)

HEAD	:= minitalk.h

PRINTF	:= ./ft_printf

LIBFT	:= ./libft

CC		:= cc

CFLAGS	?= -Wall -Werror -Wextra

all: server client
	@echo "    $(RD)╔══╦╦═╦╦╦══╦═╦╗╔╦╗$(DF)"
	@echo "    $(RD)║║║║║║║║╠╗╔╣╩║╚╣═╣$(DF)"
	@echo "    $(RD)╚╩╩╩╩╩═╩╝╚╝╚╩╩═╩╩╝$(DF)"
	@echo "$(GR)======= $(UGR)HOW TO USE$(DF)$(GR) =======$(DF)"
	@echo "$(WH)1. Launch server$(DF)."
	@echo "$(GR)   ./server$(DF)"
	@echo "$(WH)2. Launch client.$(DF)"
	@echo "$(GR)   ./client [pid] [msg]$(DF)"
	@echo "$(GR)==========================$(DF)"
	

server: server.o $(HEAD)
	@$(CC) $(CFLAGS) $< -o server -L$(PRINTF) $(PRINTF)/*.a
	@$(CC) $(CFLAGS) $< -o server -L$(LIBFT) $(LIBFT)/*.a
	@echo "$(GR)✓ server created$(DF)"

client:	client.o $(HEAD)
	@$(CC) $(CFLAGS) $< -o client -L$(PRINTF) $(PRINTF)/*.a
	@$(CC) $(CFLAGS) $< -o client -L$(LIBFT) $(LIBFT)/*.a
	@echo "$(GR)✓ client created$(DF)"

pflib:
	@make all -C $(PRINTF)
	@make all -C $(LIBFT)

%.o: %.c pflib
	@$(CC) $(CFLAGS) -c $< -o $@

clean:
	@rm -rf $(OBJS)
	@make clean -C $(PRINTF)
	@make clean -C $(LIBFT)
	@echo "$(RD)✗ object files$(DF)"

fclean: clean
	@rm -f $(NAME)
	@make fclean -C $(PRINTF)
	@make fclean -C $(LIBFT)
	@echo "$(RD)✗ server & client destroyed$(DF)"
	

re: fclean all
	@make re -C $(PRINTF)
	@make re -C $(LIBFT)

.PHONY: clean fclean re

# styling
GR 	:= \033[1;92m
UGR := \033[4;32m
RD	:= \033[1;31m
WH	:= \033[1;37m
DF	:= \033[0m