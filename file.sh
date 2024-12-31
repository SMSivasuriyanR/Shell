#! /bin/bash
directory() {
  read -r -p "Enter Directory --> " dir
  if [ -d "$dir" ]  # Correct indentation for the if statement
  then
    echo "This is a directory"
  else
    echo "This is not a directory"
  fi
}
filetype(){
    read -r -p "Enter File Path --> " dir
    if [ -f "$dir" ]
    then
        echo "This is normal file"
    else
        echo "This is not a normal file"
    fi
}
readable(){
    read -r -p "Enter File Path --> " dir
    if [ -r "$dir" ]
    then
        echo "This file is readable"
    else
        echo "This file is not readable"
    fi
}
writable(){
    read -r -p "Enter File Path --> " dir
    if [ -w "$dir" ]
    then
        echo "This file is writable"
    else
        echo "This file is not readable"
    fi
}
executable(){
    read -r -p "Enter File Path --> " dir
    if [ -x "$dir" ]
    then
        echo "This file is executable"
    else
        echo "This file is not executable"
    fi
}
size(){
    read -r -p "Enter File Path --> " dir
    if [ -s "$dir" ]
    then
        echo "The file size is greater than zero"
    else
        echo "The file size is zero"
    fi
}
exists(){
    read -r -p "Enter File Path --> " dir
    if [ -e "$dir" ]
    then
        echo "File exists"
    else
        echo "File not exists"
    fi
}
echo "Enter a choice : "
echo "1. Directory Checking,"
echo "2. Normal Or Special File,"
echo "3. Readable Checking,"
echo "4. Writable Checking,"
echo "5. Executable Checking,"
echo "6. Size Greater than 0,"
echo "7. Exist Or,"
read choice

case $choice in
    1) directory;;
    2) filetype;;
    3) readable;;
    4) writable;;
    5) executable;;
    6) size;;
    7) exists;;
    *) echo "Invalid Choice";; 
esac
