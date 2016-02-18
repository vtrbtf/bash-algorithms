#!/bin/bash

echo "> Insert T"; read T
for (( i=0; i < T ; i=$i+1 )); do
     echo "> Insert R and C"
     read RC
     R=($RC)[0]
     C=($RC)[1]

     G=()

     echo "Insert the Grid"

     for (( k = 0; k < R; k++ )); do
	     read line
	     G=(${G[@]} ${line})
     done

     P=()
     echo "Insert the pattern"

     for (( k = 0; k < count; k++ )); do
     	read line 
	P=(${G[@]} ${line})
     done


done




