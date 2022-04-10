#!/bin/bash

E_INPUT=85
H=800
W=1200

OUTFILE=$0.output

#display in text widget
kdialog --title "Displaying: $0" --textbox $0 $H $W

#save to file
echo -n "VARIABLE=" > $OUTFILE
gdialog --title "User Input" --inputbox "Enter variable, please:" \
$H $W 2>> $OUTFILE

if [ "$?" -eq 0 ]
then
    echo "Executed \"dialog box\" with out errors."
else
    echo "Error(s) in \"dialog box\" execution."
    rm $OUTFILE
    exit $E_INPUT
fi

echo "The variable input in the \"input box\" was: "$VARIABLE""

rm $OUTFILE
exit $?

