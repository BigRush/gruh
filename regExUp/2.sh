#!/bin/bash

#chn555
#display users using bash
#18/12/17

users=$(cat /etc/passwd |grep "/bin/bash" | cut -d ":" -f 1)
echo users using bash are : $users
