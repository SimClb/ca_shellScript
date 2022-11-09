#! /bin/zsh

# here array is between () 

my_array=(apple banana "Fruit Basket" orange)
new_array=(test)
new_array[2]=apricot

# so you haven't initialize every members of the array ! Like new_array I can put a new member (here "apricot") and I can delete new_array[1]
# if you want see the total number of elements in the array you can use : ${#name_of_array[@]}
# remember $@ take every arguements so here it's same but it takes all of members 

echo ${#my_array[@]} 

echo $((5+4)) # no repport with the exercice but if you want use arithmetic, you have to write $(()) ==> like that he understand you 
# want do some arithmetic function

# ------------------------------ Exo ------------------------------------

NAMES=(John Eric Jessica)
# write your code here
NUMBERS=(1 2 3)
STRINGS=("Hello" "World")
NumberOfNames=${#NAMES[@]} #take the number of members from NAMES array
second_name=${NAMES[1]} #take the second name of the NAMES array

echo $second_name

echo ${NUMBERS[@]}
echo ${STRINGS[@]}
echo "The number of names listed in the NAMES array: $NumberOfNames"
echo "The second name on the NAMES list is:" ${second_name}

read USER_NAME # no report with the exo (yes also) but the "input" in shell is "read" and you put directly the new variable where 
# the information will be stocked after "read"
echo $USER_NAME