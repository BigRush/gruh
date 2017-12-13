#!/bin/bash

#chn555 && BigRush
#array editor (because array appender is technicly incorrect like my grammar)

arr=(men women black white harambe aroma caffe joe linux whatever rambling stupid cunts)

printf "array containes :  \n 
\"${arr[*]}\"\n\n\n"

read -p "enter the location of the element that you wish to change, new locations will be created automaticly : " loc
read -p "enter the value of the element you want to add : " val

arr[$loc]=$val

printf "new array is \n
\"${arr[*]}\"\n"
