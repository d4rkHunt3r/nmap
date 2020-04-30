#!/bin/bash

read -p "Put the ip address here: " IP

nmap -sV -sC $IP > $IP.nmap

echo "The file is saved in text format in the current directory. Type view to see it or 0 for exit:"

read VIEW

if [[ $VIEW==view ]];
then
cat $IP.nmap
elif [[ $VIEW==0 ]];
then
exit
fi
