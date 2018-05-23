#!/bin/bash

if [ ${1,,} == start ]; then
    transmission-daemon -g /home/malfatti/.config/transmission-daemon/;
    sudo /etc/init.d/transmission-daemon start;
elif [ ${1,,} == curses ]; then
    transmission-remote-cli -c tmalfatti:7777777@127.0.0.1;
elif [ ${1,,} == stig ]; then
    $HOME/.local/bin/stig
elif [ ${1,,} == stop ]; then
    sudo /etc/init.d/transmission-daemon stop
    sudo killall transmission-daemon
else
    echo "Usage: $0 [start|curses|stig|stop]"
fi
