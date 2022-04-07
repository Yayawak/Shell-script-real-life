#!/bin/bash

MINPARAMS=2
echo
echo "The nameof this script is \"$0\""
echo "The name of this script is \"`basename $0`\"."

echo
if [ -n "$1" ]
then
    echo "Parameter #1 is $1"
fi
if [ -n "$2" ]; then
    echo "Parameter #2 is $2"
fi
if [ $# -lt $MINPARAMS ]; then
    echo "This script needs at least $MINPARAMS command-line arguments."
fi

echo
exit 0
