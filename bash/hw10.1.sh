#!/bin/bash

# curl -o file https://www.atlassian.com/continuous-delivery/continuous-integration

#1
# cat file | grep -io 'continuous integration' | sort | uniq -c | awk '{n=n+$1} END {print n}'
#2
# cat file | grep -io 'continuous integration' | wc -l
#3
# cat file | grep -io 'continuous integration' | awk 'END{print NR}'
#4

