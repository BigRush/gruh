#!/bin/bash

#chn555 & BigRush script
#array checker

array1=(1 2 3 4)
array2=(4 5 6 7)
array3=(7 8 9 1)

for i in ${array1[@]} ; do
	for g in ${array2[@]} ; do
		if [[ $i == $g ]]; then
			echo "array1 and array2 have $i in common"
		fi
	done

	for j in ${array3[@]}; do
		if [[ $i == $j ]] ; then
			echo "array1 and array3 have $i in common"
		fi
	done
done


for g in ${array2[@]}; do
	for j in ${array3[@]}; do
		if [[ $g == $j ]] ;then
			echo "array 2 and array3 have $g in common"
		fi
	done
done
