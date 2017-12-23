#!/bin/bash

#BigRush && chn555
#23/12/17 22:37
#displays block devices, lists storage devices, reads device name, verify var, display filesystems menu and formats with mkfs

function rootver {
	if [[ $UID -eq 0 ]] ; then
		:
	else 
		echo Script must be run as root
		exit 1
	fi
}

function chkblck {
	
	blk=$(ls -l /dev|grep ^b | awk '{print $10}')
	echo block devices are $blk
}

function makefs {
	
	for i in $blk;do
		if [[ $i =~ ^sd.[0-9]$ ]] ;then 
		devarr+=("$i")
	else
		continue
	fi
	done
#	echo storage devices are ${devarr[*]}
	echo select partition to be formatted 

	printf "${devarr[*]}\n"

	read sdev

	printf "%s\n" "${devarr[@]}" | grep "^$sdev$" 
	if [[ $? -eq 0 ]]; then
		:
	else 
		echo invalid selection, exiting
		exit 1
	fi

	echo select filesystem for $sdev

       select k in ntfs fat32 ext4 ; do
		case $k in
	 		ntfs|1) mkfs.ntfs -f /dev/$sdev
			       varfs=ntfs	;;
			
			ext4|3) mkfs.ext4 /dev/$sdev
			       varfs=ext4	;;		

			fat32|2) mkfs.fat -F 32 /dev/$sdev
			       varfs=fat32	;;

			*) echo error, exiting
				exit 1 ;;
		esac
	
	echo device $sdev has been formatted to $varfs, have a nice day	
	exit
	done


}
rootver
chkblck
makefs
