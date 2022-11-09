#! /bin/zsh 

# You can define your arguments when you are exe your scripte !

Date=$1 
echo $1
echo $# 
# contain how much there were arguments, bon jpasse en fr mon english is so pourri... Du coup $# contient le nombre d'arguemnts 
#transmis au script
echo $@ 
# take all of arguments and write them next to each other, feel free to try ;)
# % zsh arguments.sh 5
# >>> 5

echo $*
# same of $@

function File {
    # think you are inside the file
    # Change here
    echo $#
}

# Do not change anything
if [ ! $# -lt 1 ]; then
    File $*
    exit 0
fi


