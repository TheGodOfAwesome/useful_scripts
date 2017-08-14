# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ignore_norm_limits.sh                              :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kmuvezwa <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/08/14 14:35:38 by kmuvezwa          #+#    #+#              #
#    Updated: 2017/08/14 14:37:17 by kmuvezwa         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash
i=0
j=1
array_file_names=()
find ./ -type f -name "*.c" -print0 |
(while IFS= read -r -d '' pathname; do
	array_file_names[i]=$pathname
	if [[ $i == 24 ]]
	then
		echo Group: $j with ${#array_file_names[@]} files
		echo ${array_file_names[@]}
		norminette ${array_file_names[@]}
		i=0
		((j++))
	else
		((i++))
	fi
done
x=0
if [[ $i -gt 0 ]]
then
	echo Group: Last Group with $i files
	while [ $i -gt 0 ]; do
		norminette ${array_file_names[x]}
		((i--))
		((x++))
	done
fi)
