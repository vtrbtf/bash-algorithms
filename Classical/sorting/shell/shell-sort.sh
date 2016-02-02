#!/bin/bash 

items=("$@")
length=${#items[@]}

major_step_index=$(( length / 2 ))

echo "Major $major_step_index"
while (( major_step_index > 0 )); do
	for i in $( seq 0 $major_step_index); do 
		
		for j in $( seq $(( i + major_step_index)) $length $major_step_index ); do
			current=${items[$j]}
			inner_step_index=$j
				
			while (( inner_step_index >= major_step_index && items[$(( inner_step_index - major_step_index ))] > current )); do
				items[$inner_step_index]=${items[$(( inner_step_index - manjor_step_index ))]}
				inner_step_index=$(( inner_step_index - major_step_index ))
			done
			
			items[$inner_step_index]=$current	
		done
		
		major_slice_index=$(( major_step_index / 2))
	done
done


echo "${items[@]}"
