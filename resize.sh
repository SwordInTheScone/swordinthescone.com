#!/bin/bash
# Mac-only for now.

GOOD_WIDTH=1600

for path in $(ls images/); do
  path=images/$path
  width=$(sips -g pixelWidth $path |tail -1|sed 's/  pixelWidth: \([0-9]*\)/\1/')
  if ((width > $GOOD_WIDTH)); then
    echo Resizing $path
    sips -Z $GOOD_WIDTH $path
    
  fi
done;
