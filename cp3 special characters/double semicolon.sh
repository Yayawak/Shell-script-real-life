#!/bin/bash
# case
var="$1"
case "$var" in
    abc) echo "\$var = abc" ;;
    xyz) echo "\$var = xyz" ;;
esac
