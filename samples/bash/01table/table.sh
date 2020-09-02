#!/bin/bash
# Note uses the {} feature to make ranges which requires bash 3+


printf "   "
for num in {1..5}
do
    printf "%-3s" $num
done

printf "\n"

for num1 in {1..5}
do
    printf "%-3s" $num1
    for num2 in {1..5}
    do
        mult=$(echo "$num1 * $num2" | bc)
        printf "%-3s" $mult
    done
    printf "\n"
done
