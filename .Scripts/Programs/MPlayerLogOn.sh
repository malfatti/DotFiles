#!/bin/bash

## MPlayer with log on
mplayer -identify "$@" | tee ~/.mplayer/log

