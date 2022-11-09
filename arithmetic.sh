#! /bin/zsh

# Like I said in the arry.sh file, to do arithmetic function you have to write $(())
#a + b addition (a plus b)
#a - b substraction (a minus b)
#a * b multiplication (a times b)
#a / b division (integer) (a divided by b)
#a % b modulo (the integer remainder of a divided by b)
#a ** b exponentiation (a to the power of b)


#--------------------------- Exo ------------------------------

COST_PINEAPPLE=50

COST_BANANA=4

COST_WATERMELON=23

COST_BASKET=1

# not the cleaner but we don't care aha 

TOTAL=$((${COST_PINEAPPLE} + (2 * ${COST_BANANA}) + (3 * ${COST_WATERMELON}) + ${COST_BASKET}))

echo "Total Cost is $TOTAL\$" 