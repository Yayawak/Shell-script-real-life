#!/bin/bash

echo "Arguments that you passed are:"
until [ -z "$1" ]
do
    echo -n "$1 "
    shift
done

echo
echo "value of \"\$2\": $2"
echo "value of \"\$1\": $1"
exit 
