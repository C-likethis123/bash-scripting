#!/usr/local/bin/bash

# Author: Chow Jia Ying <chowjiaying211@gmail.com>
# Date created: 17 Dec 2022
# Last modified: 17 Dec 2022
# Description: Advises users on country based on city
# Usage: `./case.sh `

select CITY in Tokyo London "Los Angeles" Moscow Dubai Manchester "New York" Paris Bangalore Johannesburg Istanbul Milan "Abu Dhabi" Pune Nairobi Berlin Karachi;
do
  case "$CITY" in
    Tokyo) echo Japan;;
    London|Manchester) echo United Kingdom;;
    "Los Angeles"|"New York") echo United States;;
    "Moscow") echo Russia;;
    "Dubai"|"Abu Dhabi") echo UAE;;
    Paris) echo France;;
    Bangalore|Pune) echo India;;
    Johannesburg) echo South Africa;;
    Istanbul) echo Turkey;;
    Milan) echo Italy;;
    Nairobi) echo Kenya;;
    Berlin) echo Germany;;
    Karachi) echo Pakistan;;
  esac
  break
done

