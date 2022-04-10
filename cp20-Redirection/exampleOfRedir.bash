#!/bin/bash

ls -l > list_data.txt # overwrite or create new file

: > zeroLengthFile.txt # = touch fileN

echo "--------" >> list_data.txt
ls -alR >> list_data.txt # append to it

echo "YawaYawa" 1> new_list.txt # redir stdout to it

echo "Appended Messages" 1>> new_list.txt

echo "Error here" 2>> new_list.txt
2>&1


cat *.txt | sort | uniq > piped_file.txt
