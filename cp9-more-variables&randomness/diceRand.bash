#!/bin/bash

SPOTS=6
die1=0
die2=0
echo $RANDOM
let "die1 = $RANDOM % $SPOTS +1"
let "die2 = $RANDOM % $SPOTS +1"

let "throw = $die1 + $die2"
echo "Throw of the dice = $thorw"
echo

exit 0
