# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ggalon <ggalon@student.42lyon.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/22 16:28:38 by ggalon            #+#    #+#              #
#    Updated: 2024/05/27 02:59:07 by ggalon           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# RULES ========================================================================

all:
	@ echo "\n${BBlue}Calling docker compose up...${NC}"
	@ sudo docker compose -f ./requirements/docker-compose.yml up --build -d
	@ echo "\n${BGreen}Project Ready !${NC}\n"

stop:
	@ echo "\n${BRed}Calling docker compose down...${NC}"
	@ sudo docker compose -f ./requirements/docker-compose.yml down
	@ echo "\n${BRed}Project Deleted !${NC}\n"

re: stop all

.PHONY: all stop re

# COLORS =======================================================================

# Reset
NC=\033[0m

# Regular
Black=\033[0;90m
Red=\033[0;91m
Green=\033[0;92m
Yellow=\033[0;93m
Blue=\033[0;94m
Purple=\033[0;95m
Cyan=\033[0;96m
White=\033[0;97m

# Bold
BBlack=\033[1;90m
BRed=\033[1;91m
BGreen=\033[1;92m
BYellow=\033[1;93m
BBlue=\033[1;94m
BPurple=\033[1;95m
BCyan=\033[1;96m
BWhite=\033[1;97m

# Background
BGBlack=\033[0;100m
BGRed=\033[0;101m
BGGreen=\033[0;102m
BGYellow=\033[0;103m
BGBlue=\033[0;104m
BGPurple=\033[0;105m
BGCyan=\033[0;106m
BGWhite=\033[0;107m
