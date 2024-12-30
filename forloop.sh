#! /bin/bash

for i in 1 2 3 4 5
do
    for j in 1 2 3 4 5
    do
        if [ $i -eq 1 -o $j -eq 1 -o $i -eq 5 -o $j -eq 5 ]
        then
        echo -n "*"
        else
        echo -n " "
        fi
    done
    echo ""
done