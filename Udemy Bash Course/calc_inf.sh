#!/usr/local/bin/bash

# Author: Chow Jia Ying <chowjiaying211@gmail.com>
# Date created: 17 Dec 2022
# Last modified: 17 Dec 2022
# Description: does a specific operation to 10 numbers specified to this script
# Usage: `./calc_inf.sh <any calculator operations>`

if [ $# -lt 3 ]; then
  echo "$0 usage: <integer1> <operator> <integer2> ..."
fi

echo $(( $@ ))

