#!/usr/local/bin/bash

# Author: Chow Jia Ying <chowjiaying211@gmail.com>
# Date created: 17 Dec 2022
# Last modified: 17 Dec 2022
# Description: a timer that counts down from the specified number provided by the user
# Usage: `./timer.sh [-m minutes] [-s seconds]`

if [ $# -lt 2 ]; then
  echo "$0: [-m minutes] [-s seconds]"
  exit 1
fi 

total_seconds=0
while getopts ":m:s:" opt; do
  case "$opt" in
    m) (( total_seconds += 60 * ${OPTARG:-0} ));;
    s) (( total_seconds += ${OPTARG:-0} ));;
    *) echo "missing arg: $OPTARG" ;;
  esac
done

while [ $total_seconds -gt 0 ]; do
  sleep 1
  (( total_seconds -= 1 ))
done

echo "Time's up!"
