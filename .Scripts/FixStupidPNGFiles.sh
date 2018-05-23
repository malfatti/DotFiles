#!/bin/bash
for i in $(find "$@" -type f -name "*.png")
do
	convert $i -strip $i
	echo ""$i" fixed."
done
