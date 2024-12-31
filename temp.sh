
function exists() {
    read -r -p "Enter File Path --> " dir
    if [ -e "$dir" ]
    then
        echo "File exists"
    else
        echo "File not exists"
    fi
}
exists