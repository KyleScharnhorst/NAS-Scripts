#!/bin/bash

ARGS=''

for i; do 
    ARGS=$ARGS.*$i 
done

echo Searching for $ARGS
locate -i -r "^/mnt/disk$ARGS" | grep -Eiv ".r[0-9]*$|.jpg$|.nfo$|.torrent$|.png$|.sfv$|sample|screens$|.srt$|proof$|.txt$|.jpeg$"
