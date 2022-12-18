#!/usr/local/bin/bash

# Author: Chow Jia Ying <chowjiaying211@gmail.com>
# Date created: 18 Dec 2022
# Last modified: 18 Dec 2022
# Description: Obtain header information received
# Usage: `./urls.sh `

# my sol
while read url; do
  curl --head "www.$url" >> "${url::-4}.txt"
done < <(cut -c 5- < urls.txt)

# proj sol
readarray -t urls < urls.txt
for url in "${urls[@]}"; do
  webname=$(echo $url | cut -d "." -f 2)
  curl --head "$url" > "$webname".txt
done
