# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    load_desktop.sh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kmuvezwa <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/08/23 12:34:04 by kmuvezwa          #+#    #+#              #
#    Updated: 2017/08/23 13:02:21 by kmuvezwa         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash
cd 
cd ./Desktop/ && mkdir 2017
cd ./2017/ && git clone https://github.com/TheGodOfAwesome/useful_scripts.git && git clone https://github.com/TheGodOfAwesome/libft.git
