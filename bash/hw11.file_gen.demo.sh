#!/bin/bash

cd test
for (( i = 1; i <= $1; i++ )); do
    touch file_$i
done
files=`ls`
for file in $files; do
    num=`echo $file | awk -F_ '{print $2}'`
    if [[ $(($num % 2)) -eq "0" ]]; then
        echo "even" >> $file
    else
        echo "odd" >> $file
    fi
done
