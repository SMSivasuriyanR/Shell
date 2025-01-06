#!/bin/bash

# To read content from one file using for loop
forloop(){
    items=/root/shell/selectstatement.sh
for item in $(cat $items)
do 
    echo $item
done
}

# To read content from one file using while loop
whileloop(){
while read myVar
do
    echo $myVar
done < /root/shell/scp.sh
}

# incrementation using shortcut
increment(){
i=1
for name in abi cibi sakthivel madhan
do  
    echo $i : $name
    i=$((i+1))
done
}

# Printing the list of items inside a directory usig for loop
list(){
    for item in $(ls /root/shell)
    do
        echo $item
    done
}
