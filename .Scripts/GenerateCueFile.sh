#!/bin/bash

## Generate .cue files

File="$@"

echo "FILE \""$File"\" BINARY" > "${File::-3}"cue
echo "  TRACK 01 MODE2/2352" >> "${File::-3}"cue
echo "    INDEX 01 00:00:00" >> "${File::-3}"cue
