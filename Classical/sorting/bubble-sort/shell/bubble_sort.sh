#!/bin/bash

items=("$@")
len=${#items[@]}

for (( i = len - 1; i > 0 ; i-- )); do
    for (( j = 0; j < i; j++ )); do
	    if (( items[j]  > items[$(( j + 1 ))])); then
		    temp=${items[j]}
		    items[$j]=${items[$((j + 1))]}
		    items[$(( j + 1 ))]=${temp}
	    fi
    done
done

echo "${items[@]}"
