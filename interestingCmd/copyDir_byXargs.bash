#!/bin/bash 
# copy entirely dir to another specific dir.
eNoArgs=65
if [ -z "$1" ]; then
    echo "Usage: `basename $1` directory-to-copy-to"
    exit $eNoArgs
fi

ls . | xargs -i -t cp ./{} $1

exit 0
