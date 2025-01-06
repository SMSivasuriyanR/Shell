#!/bin/bash

function number{
    i=1
    for f in $@
    do
        echo $i : $f
        ((i+=1))
    done
    
}
number $(ls)

number beyblade shinchan dragonball naruto jjk