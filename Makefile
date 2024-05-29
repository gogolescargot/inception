# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ggalon <ggalon@student.42lyon.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/22 16:28:38 by ggalon            #+#    #+#              #
#    Updated: 2024/05/30 01:20:50 by ggalon           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# RULES ========================================================================

all:
	@ echo "\n${BBlue}Calling docker compose up...${NC}\n"
	@ mkdir -p /home/ggalon/data/wordpress
	@ mkdir -p /home/ggalon/data/mysql
	@ sudo docker compose -f docker-compose.yml up --build -d
	@ echo "\n${BGreen}Project Ready !${NC}\n"

clean:
	@ echo "\n${BRed}Calling docker compose down...${NC}\n"
	@ sudo docker compose -f docker-compose.yml down

fclean:
	@ echo "\n${BRed}Calling docker compose down and clear volumes...${NC}\n"
	@ sudo docker compose -f docker-compose.yml down
	sudo rm -rf /home/ggalon/data/wordpress
	sudo rm -rf /home/ggalon/data/mysql

re: fclean all

.PHONY: all clean flclean re

# COLORS =======================================================================

# Reset
NC=\033[0m

# Bold
BBlack=\033[1;90m
BRed=\033[1;91m
BGreen=\033[1;92m
BYellow=\033[1;93m
BBlue=\033[1;94m
BPurple=\033[1;95m
BCyan=\033[1;96m
BWhite=\033[1;97m
