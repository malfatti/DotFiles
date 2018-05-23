#!/bin/bash

Here=$(pwd)
cd /usr/portage/distfiles
sudo wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "$1"
cd $Here
echo "Finished downloading."
