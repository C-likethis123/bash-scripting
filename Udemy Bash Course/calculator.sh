#!/usr/local/bin/bash

# Author: Chow Jia Ying <chowjiaying211@gmail.com>
# Date created: 17 Dec 2022
# Last modified: 17 Dec 2022
# Description: does a specific operation to 10 numbers specified to this script
# Usage: `./calculator.sh <operator> <number1> <number2> ...  <number10>`

if [ $# -lt 10 ]; then
  echo "$0 usage: <operator> <number1> <number2> ... <number10>"
fi

echo $(( "$2" "$1" "$3" "$1" "$4" "$1" "$5" "$1" "$6" "$1" "$7" "$1" "$8" "$1" "$9" "$1" "${10}" "$1" "${11}" ))

