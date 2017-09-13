#!/bin/bash

ARGS=''

for i; do 
    ARGS=$ARGS.*$i 
done

echo Searching for $ARGS
locate -i -r "^/mnt/disk$ARGS" | grep -Ev ".r[0-9]*$|.jpg$|.nfo$|.torrent$|.png$|.sfv$"
