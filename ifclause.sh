#! /bin/bash
function max_min(){
    num1=$1
    num2=$2
if [ $num1 -gt $num2 ]
then
    echo "$num1 is greater than $num2"
elif [ $num1 -lt $num2 ]
then
    echo "$num1 is lesser than $num2"
elif [ $num1 -eq $num2 ]
then
     echo "$num1 iw equal to $num2"
else
    echo "Invalid Number"
fi
}

read -p "enter a value " num1
read -p "enter a value " num2

max_min $num1 $num2