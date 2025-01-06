# This script transfering files for one host to another host by using scp
# Using the scp command in shell/bash scripting we are achieving this.

#!/bin/bash
remote_to_current(){
    # Gathering host informations.
    echo "Now you choosed host to current"
    echo "Now you choosed host to current" >> log.sh
    read -r -p  "enter user name --> " username
    read -r -p  "enter remote host --> " rhost
    read -r -p  "enter source directory --> " sdirectory
    read -r -p  "enter destination directory --> " ddirectory
    # transfering files from host to current using scp command
    scp $username@$rhost:$sdirectory $ddirectory
    # redirecting the result into a file
    echo "File transfered from remote host to current host" >> log.sh
}
current_to_remote(){
    # Gathering host informations.
    echo "Now you choosed current to remote"
    echo "Now you choosed host to remote" >> log.sh
    read -r -p  "enter source directory --> " sdirectory
    read -r -p  "enter user name --> " username
    read -r -p  "enter remote host --> " rhost
    read -r -p  "enter destination directory --> " ddirectory
    # transfering files from host to current using scp command
    scp $sdirectory $username@$rhost:$ddirectory
    # redirecting the result into a file
    echo "File transfered from current to remote host" >> log.sh
} 
remote_to_remote(){
    # Gathering one remote source host informations.
    echo "Now you choosed remote to remote"
    echo "Now you choosed remote to remote" >> log.sh
    read -r -p  "enter source user name --> " susername
    read -r -p  "enter source host --> " shost
    read -r -p  "enter source directory --> " sdirectory
    # Gathering another remote destination host informations.
    read -r -p  "enter destination user name --> " dusername
    read -r -p  "enter destination host --> " dhost
    read -r -p  "enter destination directory --> " ddirectory
    # transfering files from host to current using scp command
    scp $susername@$shost:$sdirectory $dusername@$dhost:$ddirectory
    # redirecting the result into a file
    echo "File transfered from" $shost "to" $dhost>> log.sh
} 
echo "\t\t\t Enter the choices "
read -r -p "1. Current to Remote | 2. Remote to Current | 3. Remote to Remote --> " choice
case $choice in
    1)current_to_remote;;
    2)remote_to_current;;
    3)remote_to_remote;;
    *)echo "Wrong Choice" >> log.sh;;
esac