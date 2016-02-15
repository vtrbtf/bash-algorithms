#!/bin/bash

read -r N

for ((i=0; i<N; i++)); do 
	for ((j=0; j< $(( N - i - 1)); j++ )); do
		printf  " "
	done
	
	for ((j=$(( N - i -1 )); j < $N; j++ )); do
		printf "#"
	done
	
	printf "\n"	
done

