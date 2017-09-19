#!/bin/bash

##
# Script exists incase a manual mount needs to happen.
# Can add the following snippet to your /etc/fstab to 
# mount directories automatically:
#//192.168.0.13/disk1_share /mnt/disk1_share cifs _netdev,username=user,password=Bonita!956z 0 0
#//192.168.0.13/disk2_share /mnt/disk2_share cifs _netdev,username=user,password=Bonita!956z 0 0
#//192.168.0.13/disk3_share /mnt/disk3_share cifs _netdev,username=user,password=Bonita!956z 0 0
#//192.168.0.13/disk4_share /mnt/disk4_share cifs _netdev,username=user,password=Bonita!956z 0 0
##

for i in `seq 1 4`;
do
	DISK_DIR="disk${i}_share"
	sudo mount -t cifs -o username=user,password=Bonita!956z //192.168.0.13/$DISK_DIR /mnt/$DISK_DIR
done
