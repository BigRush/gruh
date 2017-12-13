#!/bin/bash

#chn555 & BigRush script
#cool nickname checker

cool_nicknames=(BigRush chn555 br0k3nName sheavatOznaim)
read -p "Enter a cool nick name (like BigRush): " nick
forloop () {
for i in ${cool_nicknames[*]}
do


	if [ $i == $nick ]
	then
		echo "Now $nick is a cool nick name!"
		exit
	fi
done

echo "Your nickname sucks..."
}
forloop
