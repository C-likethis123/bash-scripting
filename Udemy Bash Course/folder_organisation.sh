#!/usr/local/bin/bash

# Author: Chow Jia Ying <chowjiaying211@gmail.com>
# Date created: 18 Dec 2022
# Last modified: 18 Dec 2022
# Description: Generates a list of files for organisation
# Usage: `./folder_organisation.sh `

while read line; do
  case "$line" in
    # *.jpg|*.jpeg|*.png) [ ! -d images ] || mkdir images && mv "$line" images;;
    # *.doc|*.docx|*.txt|*.pdf) [ ! -d documents ] || mkdir documents && mv "$line" documents;;
    # *.xls|*.xlsx|*.csv) [ ! -d spreadsheets ] || mkdir spreadsheets && mv "$line" spreadsheets;;
    *.sh) [ ! -d scripts ] && mkdir scripts;; #mv "$line" scripts;;
    # *.zip|*.tar|*.tar.gz|*.tar.bz2) [ ! -d archives ] || mkdir archives && mv "$line" archives;;
    # *.ppt|*.pptx) [ ! -d presentations ] || mkdir presentations && mv "$line" presentations;;
    # *.mp3) [! -d audio ] || mkdir audio && mv "$line" audio;;
    # *.mp4) [! -d video ] || mkdir video && mv "$line" video;;
    *) echo "${line@Q}" ;;
  esac
done < <(ls )
