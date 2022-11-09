#! /bin/zsh

source ../color.sh
i=0

while [ $i -le 5 ]; do 
    nameOfFile="fileTest${i}"
    touch "${nameOfFile}".txt
    i=$((${i} + 1))
done



if [[ ${i} == 6 ]]; then  
    echo ${Red}File création succeeded !${Normal}
fi