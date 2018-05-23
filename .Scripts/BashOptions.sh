#!/bin/bash

if [ "${1,,}" == negmatchon ]; then
    shopt -s extglob
elif [ "${1,,}" == negmatchoff ]; then
    shopt -u extglob
elif [ "${1,,}" == cphiddenon ]; then
    shopt -s dotglob
elif [ "${1,,}" == cphiddenoff ]; then
    shopt -u dotglob
fi
