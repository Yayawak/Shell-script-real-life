#!/bin/bash

lines=5
( date; uname -a ) >>logfile

echo ----------------------------
tail -n $lines /var/log/dmesg | xargs | fmt -s >> logfile
echo >> logfile
echo >> logfile

exit 0
