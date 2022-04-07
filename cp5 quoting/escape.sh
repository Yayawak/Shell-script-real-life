#!/bin/bash

echo ""
echo "This will print
as two lines."
echo "This will print \
as one line."

echo; echo
echo "=============="
echo "\v\v\v\v\v" # still not escape
echo -e "\v\v\v\v\v" # escape
echo "+++++++++++++"
echo -e "hello \r world"
echo -e "alert me \a alert."
echo -e "backspace ? \b what is it ?"

echo; echo
echo "----------------"
echo $'go new line \nhere is new line.'
