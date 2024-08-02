#!/bin/bash

directory=$1

if [ -z "$directory" ]; then
    echo "Please give a directory as argument"
    echo "$0 [path-to-directory]"
    exit 1
fi

echo "5 biggest files in directory $directory:"
find "$directory" -type f -exec du -h {} + | sort -rh | head -n 5 | awk '{print $2}' | xargs -I {} basename {}

echo -e "\nFiles with more than one hard link:"
find "$directory" -type f -links +1 -exec stat --printf="%n\n" {} \; | xargs -I {} basename {}

echo -e "\nFiles without read permission:"
find "$directory" -type f ! -readable -exec stat --printf="%n\n" {} \; | xargs -I {} basename {}
