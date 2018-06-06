#!/bin/bash

Date=$(date +%Y%m%d-%H%M%S)
mkdir -p /home/malfatti/Nebula/SysBkp/$Date

echo "Backing up system files..."
cp -vR --parents /etc/bumblebee/ /home/malfatti/Nebula/SysBkp/$Date >> /home/malfatti/Nebula/SysBkp/$Date-Log
cp -v --parents /etc/conf.d/hostname /home/malfatti/Nebula/SysBkp/$Date >> /home/malfatti/Nebula/SysBkp/$Date-Log
cp -v --parents /etc/conf.d/keymaps /home/malfatti/Nebula/SysBkp/$Date >> /home/malfatti/Nebula/SysBkp/$Date-Log
cp -v --parents /etc/conf.d/modules /home/malfatti/Nebula/SysBkp/$Date >> /home/malfatti/Nebula/SysBkp/$Date-Log
cp -v --parents /etc/conf.d/net /home/malfatti/Nebula/SysBkp/$Date >> /home/malfatti/Nebula/SysBkp/$Date-Log
cp -v --parents /etc/cups/cupsd.conf /home/malfatti/Nebula/SysBkp/$Date >> /home/malfatti/Nebula/SysBkp/$Date-Log
cp -v --parents /etc/fstab /home/malfatti/Nebula/SysBkp/$Date >> /home/malfatti/Nebula/SysBkp/$Date-Log
cp -v --parents /etc/hosts /home/malfatti/Nebula/SysBkp/$Date >> /home/malfatti/Nebula/SysBkp/$Date-Log
cp -v --parents /etc/locale.gen /home/malfatti/Nebula/SysBkp/$Date >> /home/malfatti/Nebula/SysBkp/$Date-Log
cp -vR --parents /etc/modprobe.d/ /home/malfatti/Nebula/SysBkp/$Date >> /home/malfatti/Nebula/SysBkp/$Date-Log
cp -v --parents /etc/portage/make.conf /home/malfatti/Nebula/SysBkp/$Date >> /home/malfatti/Nebula/SysBkp/$Date-Log
cp -vR --parents /etc/portage/package.use/ /home/malfatti/Nebula/SysBkp/$Date >> /home/malfatti/Nebula/SysBkp/$Date-Log
cp -vR --parents /etc/portage/package.keywords/ /home/malfatti/Nebula/SysBkp/$Date >> /home/malfatti/Nebula/SysBkp/$Date-Log
cp -vR --parents /etc/portage/package.mask/ /home/malfatti/Nebula/SysBkp/$Date >> /home/malfatti/Nebula/SysBkp/$Date-Log
cp -v --parents /etc/rc.conf /home/malfatti/Nebula/SysBkp/$Date >> /home/malfatti/Nebula/SysBkp/$Date-Log
cp -v --parents /etc/resolv.conf /home/malfatti/Nebula/SysBkp/$Date >> /home/malfatti/Nebula/SysBkp/$Date-Log
cp -v --parents /etc/security/limits.conf /home/malfatti/Nebula/SysBkp/$Date >> /home/malfatti/Nebula/SysBkp/$Date-Log
cp -v --parents /etc/timezone /home/malfatti/Nebula/SysBkp/$Date >> /home/malfatti/Nebula/SysBkp/$Date-Log
cp -vR --parents /etc/udev/rules.d /home/malfatti/Nebula/SysBkp/$Date >> /home/malfatti/Nebula/SysBkp/$Date-Log
cp -v --parents /etc/X11/xorg.conf /home/malfatti/Nebula/SysBkp/$Date >> /home/malfatti/Nebula/SysBkp/$Date-Log
cp -vR --parents /etc/X11/xorg.conf.d /home/malfatti/Nebula/SysBkp/$Date >> /home/malfatti/Nebula/SysBkp/$Date-Log

cp -v --parents /usr/share/keymaps/i386/qwerty/MyKeymap.map.gz /home/malfatti/Nebula/SysBkp/$Date >> /home/malfatti/Nebula/SysBkp/$Date-Log
cp -v --parents /usr/src/linux-*/.config /home/malfatti/Nebula/SysBkp/$Date >> /home/malfatti/Nebula/SysBkp/$Date-Log


echo "Backing up user config..."
cp -vR --parents /home/malfatti/{.BashAeternalHistory,.config,.gtkrc-2.0,.icons,.local,.mednafen,texmf,.themes,.vim*} /home/malfatti/Nebula/SysBkp/$Date >> /home/malfatti/Nebula/SysBkp/$Date-Log
rm -R /home/malfatti/Nebula/SysBkp/$Date/home/malfatti/.config/google-chrome

