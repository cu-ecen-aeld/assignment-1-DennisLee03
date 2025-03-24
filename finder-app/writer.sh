#!/bin/sh
#Writer script
#Dennis Lee

# 2 runtime arguments:
writefile=$1
writestr=$2

# if any of the parameters above were not specified
if [ $# -lt 2 ]
then
    echo "Error: Required arguments didn't provide correctly."
    echo "- argument 1 = the file to be wrriten\n- argument 2 = string to be wrriten."
    echo "Exit."
    exit 1
fi

path=${writefile%\/*}

# use -p to make sure the path would exist
mkdir -p "$path"

# touch the file to make sure there is a file we want to be written, and then overwrite it
touch "$writefile"
echo "$writestr" > "$writefile"

if [ -e "$writefile" ]
then
    echo "Successfully write the file."
else
    echo "Sorry, fail to write the file."
fi