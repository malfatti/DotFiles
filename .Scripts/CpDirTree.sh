#!/bin/bash

## Copy directory tree
# This will copy all directories but no files from one location to another.
# The IN and OUT paths MUST exist and MUST include "/" at the end.
# Ex:
#	$ CpDirTree ./ MyBackup/Date/ 

find "$1" -type d -links 2 -exec mkdir -p ""$2"{}" \;

echo "This is the IN tree:"
tree -d "$1"
echo ""
echo "This is the OUT tree:"
tree -d "$2"
