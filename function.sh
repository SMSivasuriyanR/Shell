#! /bin/bash
function maximum(){
    local value=$1
    local max=$2
if [ $value -gt $max ]
then
    echo $value 

elif [ $value -lt $max ]
then
    echo $max

elif [ $value -eq $max ]
then
    echo "Equal"

else
    echo "Invalid Number"
fi
}
read -p "Enter a value $num1" 
read -p "Enter b value $num2"

maximum $num1 $num2
