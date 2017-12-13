#!/bin/bash

#chn555 $ BigRush script
#array puller

read -p "Please enter the place of the element that you want to be removed, remember, arrays start at 0: " place

until [[ $place == [0-9] ]]
do
	echo "Invalid input"
	read -p "Please enter the place of the element that you want to be removed, remember, arrays start at 0: " place
done

array1=(one two three four five six seven eight nine ten)
printf "Element containing the value \"${array1[place]}\" will be removed\n"
unset array1[$place]
printf "The array now contains the values:\n${array1[*]} \n"



