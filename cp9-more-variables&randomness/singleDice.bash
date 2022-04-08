#!/bin/bash

RANDOM=$$ # seed
PIPS=6
MAXTRHOWS=600
throw=0

ones=0
twos=0
threes=0
fours=0
fives=0
sixes=0

print_result () {
echo
echo "ones =   $ones"
echo "twos =   $twos"
echo "threes = $threes"
echo "fours =  $fours"
echo "fives =  $fives"
echo "sixes =  $sixes"
echo
}

update_count()
{
case "$1" in
  0) ((ones++));;   # Since a die has no "zero", this corresponds to 1.
  1) ((twos++));;   # And this to 2.
  2) ((threes++));; # And so forth.
  3) ((fours++));;
  4) ((fives++));;
  5) ((sixes++));;
esac
}

echo


while [[ "$thorw" -lt "$MAXTRHOWS" ]]
do
    let "die1 = RANDOM % $PIPS"
    let "thorw += 1"
    update_count $die1 # $die1 is $1
done

print_result

exit $?
