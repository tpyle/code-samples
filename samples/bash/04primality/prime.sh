#!/bin/bash

function checkPrime {
    number=$1
    limit=$(echo "scale=0; sqrt($number)" | bc -l)
    start="2"
    while (( $(echo "scale=0; $start <= $limit" | bc -l) )); do
        if (( $(echo "scale=0; $number % $start == 0" | bc -l) )); then
            echo "$number => False"
            return
        fi
        start=$(echo "$start + 1" | bc -l)
    done
    echo "$number => True"
}


if [ "$#" -eq 0 ]; then
    >&2 echo "Error: prime.sh <number> [<number> ...]"
    exit 1
fi

for number in $@
do
    re='^\+?[0-9]+$'

    if ! [[ $number =~  $re  ]];  then
        echo "Error: Expected to receive a positive integer, received $number"
        exit 2
    fi

    checkPrime $number
done
