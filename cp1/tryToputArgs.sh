#!/bin/sh
E_WRONG_ARGS=85
script_params="-a -h -m -z"

if [ $# -ne 4 ]
then
    echo "Usage: `basename $0` $script_params"
    exit $E_WRONG_ARGS
fi
