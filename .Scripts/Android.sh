#!/bin/bash

if [ "${1,,}" == on ]; then
    jmtpfs ~/AndroidPhone
elif [ "${1,,}" == off ]; then
    fusermount -u ~/AndroidPhone
else
    echo "Usage: Android [on | off]"
fi

