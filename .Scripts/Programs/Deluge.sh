#!/bin/bash

## Start deluge
sudo /etc/init.d/deluged start;
deluge-console -c ~/.config/deluge/
sudo /etc/init.d/deluged stop;
sudo killall deluged

