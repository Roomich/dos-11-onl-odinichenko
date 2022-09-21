#!/bin/bash

#Ищем словосочетание "continuous integration"

#скачаем содержимое в файл для удобства
# curl -o file https://www.atlassian.com/continuous-delivery/continuous-integration

#1
# cat file | grep -io 'continuous integration' | sort | uniq -c | awk '{n=n+$1} END {print n}'
#2
# cat file | grep -io 'continuous integration' | wc -l
#3
