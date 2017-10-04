#!/bin/bash

ARGS=''

for i; do 
    ARGS=$ARGS.*$i 
done

echo Searching for $ARGS
locate -i -r "^/mnt/disk$ARGS" | grep -Eiv ".r[0-9]*$|.jpg$|.nfo$|.torrent$|.png$|.sfv$|sample|screens$|.srt$|proof$|.txt$|.jpeg$|.xml$|.db$|.dat$"

#Grep exits with an exit code of 1 if there were no matching lines.
#which means there are no results. Here we are going to handle that.
if [ $? -eq 1 ]
then
	echo No Results Found.
	exit 0
fi
