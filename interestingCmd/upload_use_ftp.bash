#!/bin/bash

E_ARGERROR=85
if [ -z "$1" ]
then
    echo "Usage: `basename $0` Filename-to-upload"
    exit $E_ARGERROR
fi

filename=`basename $1`
server="ibiblio.org"
dir="~/Desktop/"

password="elio.interesante@gmail.com"

ftp -n $server <<End-Of-Session

user anonymous "$password"

binary
bell
cd $dir
put "$filename.lsm"
put "$filename.tar.gz"
bye
End-Of-Session

exit 0
