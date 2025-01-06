#!/bin/bash

printing(){
    local i=1
    for f in $@
    do
        echo $i : $f
        ((i+=1))
    done
}
declare -a arr

j=1
for i in 10 20 30 40 50
do
    arr[$j]=$i
    echo $arr[$j]
    ((j+=1))
done
printing "cibi" "sakthivel" "madhan" "hari" "dinesh"