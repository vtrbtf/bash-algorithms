#!/bin/bash

pick() {
	echo "$time" | cut -d : -f $1
}

read -r time

h=$( pick 1 )
m=$( pick 2 )

s=$( pick 3 ) 
s=${s:0:2}

period=$( pick 3 )
period=${period:2:2}


[[ $period == "PM" ]] && echo "$((h + 12)):${m}:${s}" || echo "${h}:${m}:${s}"
