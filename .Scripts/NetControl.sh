#!/bin/bash

IF="$1"

if [ "${IF,,}" == wpa ]; then
    #sudo /etc/init.d/tor stop;
    #sudo killall tor;
    sudo /etc/init.d/net.wlp8s0 stop;
    sudo /etc/init.d/net.enp9s0 stop;
#    sudo modprobe -r r8169;
    sleep 1

    sudo /etc/init.d/net.wlp8s0 start;
    #sudo /etc/init.d/tor start;
    
elif [ "${IF,,}" == enp ]; then
    #sudo /etc/init.d/tor stop;
    #sudo killall tor;
    sudo /etc/init.d/net.wlp8s0 stop;
    sudo /etc/init.d/net.enp9s0 stop;
#    sudo modprobe -r r8169;
    sleep 1
    
#    echo "Loading r8169..."; sudo modprobe r8169;
    sudo /etc/init.d/net.enp9s0 start;
#    sudo /etc/init.d/tor start;

elif [ "${IF,,}" == off ]; then
    sudo /etc/init.d/net.wlp8s0 stop;
    sudo /etc/init.d/net.enp9s0 stop;

else
    echo "Choose a network interface [wpa | enp] or 'off'."
fi
