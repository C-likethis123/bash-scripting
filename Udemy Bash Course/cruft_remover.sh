#!/usr/local/bin/bash

# Author: Chow Jia Ying <chowjiaying211@gmail.com>
# Date created: 18 Dec 2022
# Last modified: 18 Dec 2022
# Description: Remove cruft from specified folders
# Usage: `./cruft_remover.sh`

read -p "What folder do you want to delete from: " folder
read -p "How many days files should be unmodified: " days

readarray -t files < <(find "$folder" -type f -mtime "$days")
for file in "${files[@]}"; do
  rm -i "$file"
done
