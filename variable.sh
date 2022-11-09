#! /bin/zsh

# Change this code
BIRTHDATE='Jan 1, 2000'
Presents=10
BIRTHDAY=`date -jf "%b %d, %Y" ${BIRTHDATE} +"%A"`
# On macOs -d is invalid so put -jf 
# Set the date form you have to specify the form 


# Testing code - do not change it

if [[ "$BIRTHDATE" == "Jan 1, 2000" ]] ; then
    echo "BIRTHDATE is correct, it is $BIRTHDATE"
else
    echo "BIRTHDATE is incorrect - please retry"
fi
if [[ $Presents == 10 ]] ; then
    echo "I have received $Presents presents"
else
    echo "Presents is incorrect - please retry"
fi
if [[ "$BIRTHDAY" == "Saturday" ]] ; then
    echo "I was born on a $BIRTHDAY"
else
    echo "BIRTHDAY is incorrect - please retry"
fi

# ATTENTION !! On macOS you have to put two [[]] for a condition inside if
# Finely not sure.... in arguments.sh the condition just need one [] 

