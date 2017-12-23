#!/bin/bash
#Created by chn555 && BigRush $$ Maby dor

chkblk () {

	blk=$(ls -l /dev |grep ^b |awk '{print $10}')	#list all block devices

	printf "These are the block devices on your system: \n"

	printf "$blk\n"
}
chkblk

devselect () {
	printf "Please choose a drive from the list:\n"
	printf "$blk\n" |grep ^sd.[0-9]
#
	read -p "> " drive
#	
	printf "$blk\n" |grep ^sd.[0-9] |grep ^$drive$ &> /dev/null
	until [ $? -eq 0 ]; do
		read -p "> "	
		printf "Invalid device\n"	 
done

}

format () {
	


