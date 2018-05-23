#!/bin/bash

mplayer "${@:2}" -playlist <(find "$1" -type f | sort)

