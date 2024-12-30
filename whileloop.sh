#! /bin/bash

i=1
read -p "Enter N value -->" num
while [ $i -le $num ]
do
    echo "Iteration no $i"
    i=$((i + 1))
done