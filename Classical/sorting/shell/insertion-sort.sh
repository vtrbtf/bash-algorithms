#!/bin/bash -u
items=("$@")
len="${#items[@]}"
i=1
while [ $i -lt $len ]; do
	key="${items[i]}"
	j=$((i-1));
	while  [ $j -ge 0 ] && [ ${items[j]} -gt $key ]; do
		items[$((j+1))]=${items[j]}
		j=$((j-1))
	done
	i=$((i+1))
	items[$((j+1))]="${key}"
done

echo  "${items[@]}"
