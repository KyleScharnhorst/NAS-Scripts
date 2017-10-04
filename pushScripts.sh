#!/bin/bash

##
#Must be ran with root permissions. e.g., sudo ./pushScripts.sh
##

#users=( pi jeremy alex )
#files=( mountNAS.sh updateNAS.sh searchNAS.sh )

#Check for root privileges
#if [ "$EUID" -ne 0 ]
#  then echo "Please run as root"
#  exit
#fi

#for i in "${users[@]}"
#do
#    for j in "${files[@]}"
#    do
#        cp /home/pi/git/NAS-Scripts/$j /home/$i
#    done
#done

cp /home/pi/git/NAS-Scripts/updateNAS.sh /etc/cron.daily
