#!/usr/local/bin/bash

# Author: Chow Jia Ying <chowjiaying211@gmail.com>
# Date created: 18 Dec 2022
# Last modified: 18 Dec 2022
# Description: script to create folders 
# Usage: `./read_while.sh`

while read folder; do
  mkdir "$folder"
done < "$1"

exit 0
