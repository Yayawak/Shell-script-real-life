#!/bin/bash

read var1 < list_data.txt # first line
echo "var1 = $var1" 

read var2 var3 < list_data.txt
echo "var2 = $var2    var3=$var3"

echo "-----------------------------"

while read line
do
    echo "$line"
done < list_data.txt

echo "-------------------------------"

echo "List of all users:"
OIFS=$IFS; IFS=:
while read name passwd uid gid fullname ignore
do
    echo "$name ($fullname)"
done </etc/passwd
IFS=$OIFS


echo "-------------------------------"

echo "List of all users:"
while IFS=: read name passwd uid gid fullname ignore
do
    echo "$name ($fullname)"
done </etc/passwd

echo 
echo "\$IFS still $IFS"
