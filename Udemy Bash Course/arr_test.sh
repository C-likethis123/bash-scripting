#!/usr/local/bin/bash

# Author: Chow Jia Ying <chowjiaying211@gmail.com>
# Date created: 18 Dec 2022
# Last modified: 18 Dec 2022
# Description: 
# Usage: `./arr_test.sh `

variable=mon,tues,wed
readarray -t -d ',' days < <(echo "$variable")
echo ${days[@]:2}
