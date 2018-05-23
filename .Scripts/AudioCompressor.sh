#!/bin/bash

File=$1

readarray -t Lines < $File
echo > Log

echo "Total number of files: ${#Lines[@]}"

for L in $(seq 1 ${#Lines[@]}); do
    Line=${Lines[L-1]}
    readarray -d '/' -t LineSplit < <(echo "$Line")
    Folder=${LineSplit[-3]}/${LineSplit[-2]}
    mkdir -p $Folder &> /dev/null

    Line=${Line// /\?}
    Name=${Line//\?/_}; Name=${Name##*\/}; Name=${Name%.*}

    echo "Compressing $Folder/$Name to ogg"...
    ffmpeg -hide_banner -n -i $Line -acodec libopus -b:a 192000 -vn $Folder/"$Name".ogg  &>> Log
done

echo 'Done.'
