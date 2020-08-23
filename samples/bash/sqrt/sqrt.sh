#1/bin/bash

function findSqrt {
    number=$1
    x=$1
    y=1
    e=0.0000001
    while (( $(echo "scale=10; $x - $y > $e" | bc -l) )); do
        x=$(echo "scale=10; ($x + $y) / 2" | bc -l)
        y=$(echo "scale=10; $number / $x" | bc -l)
    done
    echo "$x"
}



if [ "$#" -ne 1 ]; then
    echo "Error: Usage ./sqrt.sh <number>"
    exit 1
fi

number=$1
re='^[0-9]+([.][0-9]+)?$'

if ! [[ $number =~ $re ]]; then
    echo "Error: Expected to receive a positive number, received $number"
    exit 2
fi

findSqrt $number
