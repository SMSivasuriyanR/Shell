#! /bin/bash

i=1
read -p "Enter N value --> " num
until [ $i -gt $num ]
do
    echo "Wrong Iteration no $i"
    i=$((i+1))
done
