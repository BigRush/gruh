#!/bin/bash

#lists all proc by user
#chn555

if [ -e /var/log/script ] ;then
	echo logging
else
	mkdir /var/log/script
fi

while true ; do
	tput reset
	ps -u $(whoami)
	sleep 5s
done |tee -a  /var/log/script/log1

