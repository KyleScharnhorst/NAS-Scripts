#!/bin/bash

##
# Script exists incase a manual mount needs to happen.
# Can add the following snippet to your /etc/fstab to 
# mount directories automatically:
# //192.168.0.13/disk1_share /mnt/disk1_share cifs guest,_netdev 0 0
# //192.168.0.13/disk2_share /mnt/disk2_share cifs guest,_netdev 0 0
# //192.168.0.13/disk3_share /mnt/disk3_share cifs guest,_netdev 0 0
# //192.168.0.13/disk4_share /mnt/disk4_share cifs guest,_netdev 0 0
##

sudo mount -t cifs //192.168.0.13/disk1_share /mnt/disk1_share -o rw
sudo mount -t cifs //192.168.0.13/disk2_share /mnt/disk2_share -o rw
sudo mount -t cifs //192.168.0.13/disk3_share /mnt/disk3_share -o rw
sudo mount -t cifs //192.168.0.13/disk4_share /mnt/disk4_share -o rw
