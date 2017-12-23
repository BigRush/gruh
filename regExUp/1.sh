#!/bin/bash

#chn555
#add users to system
#18/12/17

function rootver {
if [ "$(id -u)" != "0" ]; then
	echo "This script must be run as root" 1>&2
	exit 1
fi
input
}

function input {
read -p "enter list of users you want to add, seperated by a space.
must contain atleast 1 letter.
" -a usersarr

main
}

function main {
for i in ${usersarr[*]} ;do

	if [[ $(cat /etc/passwd | cut -d ":" -f 1 | grep -P ^$i$) = $i ]]; then
		echo user $i exists, skipping grandiously
		continue
	else
		echo user $i does not exist, continuing grandiously
	fi
	sleep 1s
	if [[ $i =~ [a-Z][a-Z0-9] ]]; then
		:
	else
		echo "username containes invalid characters or no letters, exiting"
		exit 1
	fi

	read -p "enter password for $i.
	password must be between 6 and 18 chars.
       " pass

       sleep 1s

	if [[ $pass =~ .{6,18} ]] ;then
		:
	else
		echo password invalid, skipping $i
		continue
	fi
	
	sleep 1s

	adduser -m $i  && echo "user $i created"
	echo $pass | passwd --stdin $i &> /dev/null

done
}

rootver
