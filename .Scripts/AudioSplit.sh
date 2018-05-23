#!/bin/bash

shnsplit -f "$Name".cue -t %n\ -\ %t -o flac "$Name".flac
bash $SCRIPTSPATH/Bash/FixStupidFileNames.sh &> /dev/null
cuetag.sh "$NewName".cue [0-9]*.flac
