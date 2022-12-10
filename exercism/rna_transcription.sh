#!/usr/bin/env bash
output=''
len="${#1}"
for (( i=0; i<len; i++ ))
do
    case "${1:i:1}" in
        G) output+=C;;
        C) output+=G;;
        T) output+=A;;
        A) output+=U;;
        *) echo "Invalid nucleotide detected." && exit 1;;
    esac
done
echo "$output"
