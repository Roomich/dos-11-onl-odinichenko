#!/bin/bash

check () {
    local var=$1
    while [[ "$var" -le "3" || -z "$var" ]];do
        read -p 'число должно быть > 3: ' var
    done
    echo $var
}

str=$(check $1)
col=$(check $2)

for ((j=0;j<$str;j++)); do
    for ((i=0;i<$col;i++)); do
        echo "$(($RANDOM%10)) " | tr -d '\n'
    done;
    echo -e
done;