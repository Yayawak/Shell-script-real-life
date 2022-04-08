#!/bin/bash

Suites="Clubs Diamonds Hearts Spedes"
Denominations="2 3 4 5 6 7 8 9 10 Jack Queen King Ace"
suite=($Suites)
denomination=($Denominations)

num_suites=${#suite[*]}
num_denomination=${#denomination[*]}

echo -n "${denomination[$((RANDOM%num_denomination
))]} of "
echo ${suite[$((RANDOM%num_suites))]}

exit 0
