#!/usr/bin/env bash

str1=$1
str2=$2

len1=${#str1}
len2=${#str2}

if [ $# -lt 2 ]; then
    echo "Usage: hamming.sh <string1> <string2>"
    exit 1
fi

if [ "$len1" -ne "$len2" ]; then
    echo "strands must be of equal length"
    exit 1
fi

distance=0
for (( i=0; i<len1; i++ ))
do
    letter1=${str1:$i:1}
    letter2=${str2:$i:1}
    [[ "$letter1" != "$letter2" ]] && (( distance++ ))
done

echo "$distance"

# Credit: https://exercism.org/tracks/bash/exercises/hamming/solutions/aliishahbazii

function hammingDistance() {
  declare in1=$1
  declare in2=$2
  declare -i distance=0
  #validation
  if [[ $# -ne 2 ]]; then
    echo "Usage: hamming.sh <string1> <string2>"
    exit 1
  fi
  if [[ ${#in1} -ne "${#in2}" ]]; then
    echo "left and right strands must be of equal length"
    exit 1
  fi
  #-----------
  until [[ -z $in1 ]]; do
    [[ ${in1:(-1)} != "${in2:(-1)}" ]] && ((distance = distance + 1))
    in1=${in1::-1}
    in2=${in2::-1}
  done
  echo "$distance"
  return 0
}
hammingDistance "$@"
