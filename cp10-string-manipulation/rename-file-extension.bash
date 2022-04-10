#!/bin/bash

# ex: rename all file *.gif => *.jpg

E_BADARGS=65

case $# in
    0|1) # 0 | 1 is 0 or 1
        echo "Usage: `basename $0` old_file_suffix new_file_suffix"
        exit
    ;;
esac

for filename in *.$1
do
    mv $filename ${filename%$1}$2
done
exit 0
