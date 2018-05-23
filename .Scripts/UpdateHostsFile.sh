#!/bin/bash
echo "Backing up..."
cp /etc/hosts /etc/hostsBkp
cp /home/malfatti/.MyScripts/Hosts /etc/hosts
echo "Downloading new entries..."
wget http://winhelp2002.mvps.org/hosts.txt
sed '22,26d' hosts.txt > hosts2.txt
echo "Adding..."
cat hosts2.txt >> /etc/hosts
echo "Cleaning..."
rm hosts*txt
echo "Done."
