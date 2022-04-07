#!/bin/bash

echo
if test -z "$1"
then
    echo "No cmd Args"
else
    echo "First arg is $1"
fi
echo

if /usr/bin/test -z "$1"
then
    echo "No cmd Args"
else
    echo "First arg is $1"
fi
