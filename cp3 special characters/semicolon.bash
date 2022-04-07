#!/bin/bash
filename="$1"
echo help; echo there
if [ -x "$filename" ]; then
    echo "File $filename exists."; cp $filename $filename.bak
else 
    echo "File $filename not found."; touch $filename
fi; echo "Created file test complete."
