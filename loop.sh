#! /bin/zsh

source color.sh

#try to do a multiplication table
echo ${Green} "############### This is the multiplication table ! ###############" ${Normal}
echo ""
list=(0 1 2 3 4 5 6 7 8 9)

# at every loop, N+1 so he take the next member
for N in ${list[@]}; do # for every ({list[@]}) members of the list, echo....
    echo "${N} * 6 = ${Red} $((${N} * 6))${Normal}"
done

echo ""

# bash until loop
echo ${Green} "############### Bash until loop ! ###############" ${Normal}
echo ""
count=14

until [ $count -gt 18 ]; do # until = jusqu'à
    echo "${Blue}I'm ${count} years old !${Normal}"
    count=$((${count} + 1))
done

echo ""

# break and continue 
echo ${Green} "############### Break and Continue ! ###############" ${Normal}
echo ""

COUNT=0                                 #here we are saying; while count >= 0 echo.... and count += 1 
while [ $COUNT -ge 0 ]; do              # So it's a forever loop... But if count >= 5 break (stop the loop)
  echo "Value of COUNT is: $COUNT"
  COUNT=$((COUNT+1))
  if [ $COUNT -ge 5 ] ; then
    break
  fi
done

echo ""

# Prints out only odd numbers - 1,3,5,7,9
COUNT=0
while [ $COUNT -lt 10 ]; do                     #here we just want keep the even number!! 
  COUNT=$((COUNT+1))                            #if count%2 != 0 (he's an even number) contninue (forget the other)
  # Check if COUNT is even
  if [ $(($COUNT % 2)) != 0 ] ; then
    continue
  fi
  echo $COUNT
done

echo ""

#--------------------------- Exo -------------------------------

echo ${Green} "############### Exo ! ###############" ${Normal}
echo ""

NUMBERS=(951 402 984 651 360 69 408 319 601 485 980 507 725 547 544 615 83 165 141 501 263 617 865 575 219 390 237 412 566 826 248 866 950 626 949 687 217 815 67 104 58 512 24 892 894 767 553 81 379 843 831 445 742 717 958 609 842 451 688 753 854 685 93 857 440 380 126 721 328 753 470 743 527)

# write your code here

OurFuckingIndex=1 #we start at index 1 bcs we are on a z-shell :)
Index2=1
for M in ${NUMBERS[@]}; do 
    OurFuckingIndex=$((${OurFuckingIndex} + 1))
    
    if [ $(($M % 2)) = 0 ]; then
        echo $M
        if [[ $M == 412 ]]; then
            break
        fi
    fi
done
echo ""
#---------------------- Correction -----------------------------
echo ${Green} "############### Correction ! ###############" ${Normal}
echo ""

for gg in ${NUMBERS[@]}; do
	
    if [[ $gg == 237 ]]; then
    	break;
    elif [[ $(($gg % 2)) == 0 ]]; then
    	echo $gg
    fi
done


