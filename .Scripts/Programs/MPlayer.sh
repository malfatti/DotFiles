#!/bin/bash

Path="${@: -1}"
Path="$PWD"/"$Path"
ASCII=0; Heavy=""; Log=""; LogTee=""; Recursive="$Path"

while [[ $# -gt 1 ]]; do
    key="$1"

    case $key in
        --ascii)
            ASCII=1
            shift
        ;;
        --heavy)
            Heavy="-lavdopts threads=4";
            shift
        ;;
        --log)
            Log="-identify"; LogTee="| tee ~/.mplayer/log";
            shift
        ;;
        --recursive)
            Recursive="-playlist <(find $Path -type f | sort)";
            shift
        ;;
        --options)
            Options="$2"
            shift 2
        ;;
        --help)
            echo"Usage:\n"
            echo"MPlayer <modifiers> --options '"<mplayer options>"' <path to file or folder>\n"
            echo"Options: --ascii, --heavy, --log, --recursive"
            exit 0
        ;;
    esac
    shift
done

if [ "$ASCII" == 1 ]; then
    urxvt -g 220x90 -fn "*-fixed-*-*-*-6-*" -e mplayer "$Options" "$Heavy" "$Log" "$Recursive" "$LogTee"
else
    echo "mplayer "$Options" "$Heavy" "$Log" "$Recursive" "$LogTee""
    mplayer "$Options" "$Heavy" "$Log" -"$RecursiveA" "$PWD"/"$Path" "$RecursiveB" "$LogTee"
fi
