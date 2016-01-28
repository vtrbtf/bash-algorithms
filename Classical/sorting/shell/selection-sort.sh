#!/bin/bash

items=("$@")
len=${#items[@]}
for (( i=0; i < $((len - 1)); i+=1)); do
	min_index=$i
	for (( j=i+1; j < len; j+=1)); do
		if (( items[j] < items[min_index])); then
			min_index=$j
		fi
	done

	temp=${items[i]}
	items[$i]=${items[min_index]}
	items[min_index]=$temp
done

echo "${items[@]}"
