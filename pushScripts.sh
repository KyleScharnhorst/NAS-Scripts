#!/bin/bash

##
#Must be ran with root permissions. e.g., sudo ./pushScripts.sh
##

SCRIPT_LOC=/home/pi/git/NAS-Scripts
UPDATE_SCRIPT=updateNAS.sh
SEARCH_SCRIPT=searchNAS.sh
BIN=/bin
ETC=/etc
CRON_DAILY=$ETC/cron.daily

files=( $UPDATE_SCRIPT $SEARCH_SCRIPT )

#Check for root privileges
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

#Copy files to bin
for j in "${files[@]}"
do
  cp $SCRIPT_LOC/$j $BIN
done

#Make update happen once daily.
cp $SCRIPT_LOC/$UPDATE_SCRIPT $CRON_DAILY
