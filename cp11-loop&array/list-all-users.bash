#!/bin/bash

password_file=/etc/passwd
n=1 # user number

for name in $(awk 'BEGIN{FS=":"}{print $1}' < $password_file)
do 
    echo "User #$n = $name"
    ((n++))
done

exit $?
