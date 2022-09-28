#!/bin/bash

GREEN='\033[0;32m'
OFF='\033[0m'

if [ "$EUID" -ne 0 ]
	then echo "Please run as root"
	exit
fi

echo -e "${GREEN}Checking kernel version....${OFF}"
uname -r
sleep 2
echo -e "${GREEN}Checking content of /usr/src ...${OFF}"
ls /usr/src
sleep 2
echo -e "${GREEN}Checking partitions ...${OFF}"
fdisk -l
sleep 2
echo -e "${GREEN}Checking kernel name, should contain your student login ...${OFF}"
uname -a
sleep 2
echo -e "${GREEN}Cheching hostname...${OFF}"
echo $HOSTNAME
sleep 2
echo -e "${GREEN}Checking which architecture you are running ...${OFF}"
getconf LONG_BIT
sleep 2
echo -e "${GREEN}Checking your kernel binary in /boot ...${OFF}"
ls /boot/vmlinuz*

echo -e "${GREEN}All done !${OFF}"
