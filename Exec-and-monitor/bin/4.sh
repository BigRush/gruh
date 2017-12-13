#!/bin/bash
#Chn555 & BigRush code
#Menu script

. 3.sh &> /dev/null

menu () {
echo "...Main menu..."
echo "[A] List all open ports"
echo "[B] List all hardware"
echo "[C] List all connected users"
echo "[D] List all storage devices"
echo "[E] Exit the script"
read -p "Enter your choice: " choice
funcyfuncy
}

funcyfuncy () {
case $choice in
	a|A) openports ;;
	b|B) conhard ;;
	c|C) conusers ;;
	d|D) storage ;;
	e|E) exit ;;
	*) echo "Invalid input returning to main menu" ; menu ;;
esac
menu
}

menu

