#!/bin/bash
echo 'Today is:'
echo "days since year's begining: `date +%j`"
prefix=temp
suffix=$(date +%s)
filename=$prefix.$suffix
echo "Temporay filename = $filename"

echo "----------------"
echo "This of all users logged on to the system:
`who -m`"

echo "----------------\n 
how long this user has been using laptop:
    `uptime`"

# redirect info to be log
1>info\ of\ current\ data.log
exit
