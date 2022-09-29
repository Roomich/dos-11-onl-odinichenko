#!/bin/bash

start_dir=$1
depth=$2
current_lvl=1
cd $start_dir

while [[ "$current_lvl" -le "$depth" ]]; do
    # echo $current_lvl
    mkdir dir_$current_lvl
    touch file_$current_lvl
    cd dir_$current_lvl
    ((current_lvl++))
done