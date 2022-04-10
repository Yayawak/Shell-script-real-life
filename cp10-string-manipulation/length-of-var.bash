#!/bin/bash

E_NO_ARGS=65
if [ $# -eq 0 ]
then 
    echo "Please invoke this script with atleast one argument"
    exit $E_NO_ARGS
fi

var1=abcdEFGH28ij
echo "var1 = ${var1}"
echo "Length of var1 = ${#var1}"

var2="abcd EFGH28ij"
echo "var2 = ${var2}"
echo "Length of var2 = ${#var2}"

echo "Number of command-line arguments passed to script = ${#@}"
echo "Number of command-line arguments passed to script = ${#*}"

exit 0
