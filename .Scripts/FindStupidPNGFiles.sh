#!/bin/bash
find $@ -name '*.png' -exec identify {} \; 1>/dev/null 2>StupidPNGFiles
