#! /bin/zsh

source color.sh 

function NameOfFunction {
    echo ${Red}"Hello World !!!!"
    echo $1 ${Normal}
}

NameOfFunction 45

echo ${Green} "######################## Exo ########################" ${Normal}

# enter your function code here

function ENGLISH_CALC {


    a=$1
    b=$3
    sign=$2
    if [[ $sign == "plus" ]]; then 
        echo "$a + $b = ${Red}$(($a+$b))${Normal}"
    elif [[ $sign == "minus" ]]; then
        echo "$a - $b = ${Red}$(($a-$b))${Normal}"
    elif [[ $sign == "times" ]]; then
     echo "$a * $b = ${Red}$(($a*$b))${Normal}"
    fi 
   
}


# testing code
ENGLISH_CALC 3 plus 5
ENGLISH_CALC 5 minus 1
ENGLISH_CALC 4 times 6