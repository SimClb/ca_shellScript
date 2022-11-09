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
