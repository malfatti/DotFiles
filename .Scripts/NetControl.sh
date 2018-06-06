#!/bin/bash

IF="$1"

if [ "${IF,,}" == wpa ]; then
    sudo /etc/init.d/net.wlp8s0 stop;
    sudo /etc/init.d/net.enp9s0 stop;
    sudo /etc/init.d/NetworkManager stop;
    sleep 1
    sudo /etc/init.d/net.wlp8s0 start;
    
elif [ "${IF,,}" == enp ]; then
    sudo /etc/init.d/net.wlp8s0 stop;
    sudo /etc/init.d/net.enp9s0 stop;
    sudo /etc/init.d/NetworkManager stop;
    sleep 1
    sudo /etc/init.d/net.enp9s0 start;

elif [ "${IF,,}" == nm ]; then
    sudo /etc/init.d/net.wlp8s0 stop;
    sudo /etc/init.d/net.enp9s0 stop;
    sudo /etc/init.d/NetworkManager stop;
    sleep 1
    sudo /etc/init.d/NetworkManager start;

elif [ "${IF,,}" == off ]; then
    sudo /etc/init.d/net.wlp8s0 stop;
    sudo /etc/init.d/net.enp9s0 stop;
    sudo /etc/init.d/NetworkManager stop;

else
    echo "Choose a network interface [wpa | enp | nm] or 'off'."
fi
