#! /bin/zsh

STRING="this is a string"
echo ${#STRING} # echo the lengh of $STRING    

STRING="this is a string"
POS=0 # we are telling "you start at 0 position"
LEN=4 # and you take a len of 4 chars 
echo ${STRING:$POS:$LEN} # so echo string but you start at 0pos and show the 4 chars by the pos0


echo ${STRING:0}  # echo form char on pos 0
echo ${STRING:12}   # echo from char on pos 12

STRING="to be or not to be"
echo ${STRING[@]/be/eat}  # you take all of $STRING and you replace the first be by "eat"
echo ${STRING[@]//to/go} # replace all to by go
echo ${STRING[@]// not/} # del not
echo ${STRING[@]/#to be/eat now} # replace the first "to be" by "eat now"
echo ${STRING[@]/%be/eat} # replace the last be by eat
echo ${STRING[@]/%be/be on $(date +%Y-%m-%d)} # replace the last be by "be on" and the date of today !!
# we can go furhter:
echo ${STRING[@]/%be/be on $(date +%Y-%m-%d) at $(date +%T)}

#------------------------ Exo ---------------------------

BUFFETT="Life is like a snowball. The important thing is finding wet snow and a really long hill."
# write your code here
ISAY=$BUFFETT

change1=${ISAY[@]/snow/foot}
change2=${ISAY[@]//snow/}
change3=${ISAY[@]/finding/getting}
#change4 ==> index doesn't work....
loc=`expr index "$change3" 'w'`
ISAY=${change3::$loc+2}

# Test code - do not modify
echo "Warren Buffett said:"
echo $BUFFETT
echo "and I say:"
echo "$ISAY"

