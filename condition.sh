#! /bin/zsh 


echo -n "Entrez votre nom: "; 
read;
names[1]=${REPLY}

echo -n "Entrez votre nom: ";
read;
names[2]=${REPLY}

if [[ ${names[1]} == "Simon" ]] && [[ ${names[2]} == "Chloé" ]]; then # conditionnal expression should surrounded by double brackets
    echo "You can enter"
else
    echo "You cannot enter"
fi 

#try to make a case structure 

echo "Press d to see the date: ";
echo "Press h to see the hour: ";
read;

request=${REPLY}

case "$request" in
    "d") echo "We are the" `date +"%D"`
    ;;
    "h") echo "It is" `date +"%T"`
    ;;
    *) echo "Press a correct  key, thanks."
esac

# a simple case bash structure 

mycase=4
case $mycase in
    1) echo "You selected bash";;
    2) echo "You selected perl";;
    3) echo "You selected phyton";;
    4) echo "You selected c++";;
    5) exit
esac

#----------------------- Exo ---------------------------

# change these variables
NUMBER=16
APPLES=16
KING="LUIS"
# modify above variables
# to make all decisions below TRUE
if [ $NUMBER -gt 15 ] ; then
  echo 1
fi
if [ $NUMBER -eq $APPLES ] ; then
  echo 2
fi
if [[ ($APPLES -eq 12) || ("$KING" = "LUIS") ]] ; then
  echo 3
fi
if [[ $(($NUMBER + $APPLES)) -le 32 ]] ; then
  echo 4
fi