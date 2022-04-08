#!/bin/bash
dummyStr=1234zipper4321
len=`expr length $dummyStr`
echo "Lenght of \"$dummyStr\" is $len"

ind=`expr index $dummyStr 23`
echo "Numerical position of first \"2\" in \"$dummyStr\" is \"$ind\"."

subs=`expr substr $dummyStr 2 6`
echo "Substring of $dummyStr at pos 2, and 6 chars long is $subs"

matchedStr=`expr match "$dummyStr" '[0-9]*'`
echo Number of digits at beginning of $dummyStr is $matchedStr.



