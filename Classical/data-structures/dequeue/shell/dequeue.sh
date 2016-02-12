#!/bin/bash

items=()
while true ; do
	echo "... "
	read -r line
	args=($line)
	case ${args[0]} in 
		"FADD")
			arg_list=(${args[1]})
			arg_list+=${items[@]}
			items=$arg_list
			;;
		"RADD")
			items+=(${args[1]})
			;;
		"FPOP")
			echo "${items[0]}"
			items=${items[@]:1}
			;;
		"RPOP") 
			echo "${items[-1]}"
			items=${items[@]:0:$((${#items[@]} - 1))}
			;;
	esac
			
done
