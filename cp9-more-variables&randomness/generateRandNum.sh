#!/bin/bash

MAXCOUNT=10
count=1
echo
echo "$MAXCOUNT random numbers:"
while [ "$count" -le $MAXCOUNT ]
do
    number=$RANDOM
    echo $number
    let "count += 1"
done
echo "=================="

RANGE=500
echo
number=$RANDOM
let "number %= $RANGE"
echo "Random number less than $RANGE --- $number"
echo "=================="

FLOOR=200
number=0
while [ $number -le $FLOOR ]
do
    number=$RANDOM
done
echo "Random number greater than $FLOOR is ---- $number"
echo "==================="

# contraint between ceil & floor
number=0
while [ $number -le $FLOOR ]; do
    number=$RANDOM
    let "number %= $RANGE"
done
echo "Random numbe between $FLOOR & $RANGE is ---- $number"
echo "=================="

# generate binary choice yes or not
BINARY=2
T=1
number=$RANDOM
let "number %= $BINARY"
if [ $number -eq $T ]; then
    echo "True"
else
    echo "False"
fi
echo "============="
