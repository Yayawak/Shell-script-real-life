#!/bin/bash

file=/etc/fstab

{
    read line1
    read line2
} < $file

echo "first line in $file is:"
echo "$line1"
echo
echo "Second line in $file is:"
echo "$line2"

exit 0
