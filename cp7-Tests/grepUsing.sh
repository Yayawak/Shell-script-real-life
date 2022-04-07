#!/bin/bash
COMPONENTDIR=~/Desktop/MUI-learning/mui-official-tutorial/src/components/*
GREP_OPTS="-H -A 5 --color -i"
TARGETSTRING="react"
for file in $COMPONENTDIR
do
    grep $GREP_OPTS "$TARGETSTRING" "$file"
    echo
done

exit $?
