#!/bin/bash

#chn555
#check who last added file to /tmp
#18/12/17

lstusr=$(ls -lt /tmp | head -n 2 | tail -n 1 |  awk '{print $3}')

if [[ $(cat /etc/passwd| cut -d ":" -f 1|grep $lstusr) =~ ^$lstusr$ ]] ;then 
	echo user $lstusr was the last one to creat a file in /tmp
else
	echo an error has occured, cannot verify that $lstusr is in the system
fi
