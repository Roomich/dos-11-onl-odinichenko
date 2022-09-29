#!/bin/bash

USERNAME=$USER
PORT_NUMBER=$1

CURRENT_USER_PROCESSES=`ps -aux | awk '$1=="'$USERNAME'" {print}' | wc -l`
echo -e "\nОт имени текущего пользователя выполняется $CURRENT_USER_PROCESSES процессов.\n"

PROC_LOAD=`uptime | awk '{print $10, $11, $12}'`
echo -e "Средняя загруженность процессора:\n$PROC_LOAD\n"

MEM_AVAILABLE=`free -m | awk '$1=="Mem:" {print $7}'`
echo -e "Доступно $MEM_AVAILABLE Mb оперативной памяти\n"

if [[ -z "$PORT_NUMBER" ]]; then
    CONNECTIONS=`netstat -tunlp | awk '{print $4}' | wc -l`;
    echo -e "Не указан порт!!! По всем портам установлено соединений: $CONNECTIONS\n";
else
    CONNECTIONS=`netstat -tunlp | awk '{print $4}' | grep :$PORT_NUMBER | wc -l`;
    echo -e "По порту $PORT_NUMBER установлено соединений: $CONNECTIONS\n";
fi

DISK_SPACE=`lsblk | awk '/^sd/ {print $4}' | tr -d G | awk '{n=n+$1} END {print n}'`
echo -e "Всего дискового пространства: $DISK_SPACE Gb\n"