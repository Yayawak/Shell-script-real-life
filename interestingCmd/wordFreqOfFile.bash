#!/bin/bash

# concept change line ==> word
# i.e. This is Hello ==>
# This 
# is 
# Hello

args=1
eBadArgs=85
eNoFile=86

if [[ "$args" != "$#" ]]; then 
    echo "Usage: `basename $0` fileName"
    exit $eBadArgs
fi

if [[ ! -f "$1" ]]; then
    echo "File \"$1\" does not exist."
fi

# look at file input => cut space in to one column => Converts all upper -> lower
cat "$1" | xargs -n1 | tr A-z a-z | \

# edit dot comma space -> blank 
sed -e 's/\.//g' -e 's/\,//g' -e 's/ //g' | \

# sort => remove duplicated line & add prefix count num => sort numirical
sort | uniq -c | sort -nr

exit $?
