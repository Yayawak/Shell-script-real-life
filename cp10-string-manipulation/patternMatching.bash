#!/bin/bash

var1=abcd12345abc6789
pat1=a*d
echo
echo "var1 = ${var1}"

echo "Number of characters in ${var1} = ${#var1}"
echo

echo "pattern1 = $pat1"
echo '${var1#$pat1} =' "${var1#$pat1}"
echo "pattern1 = $pat1"
echo '${var1##$pat1} =' "${var1##$pat1}"

# pat2=b*9
# echo "pattern2 = $pat2"
# echo '${var1##$pat2} =' "${var1##$pat2}"
