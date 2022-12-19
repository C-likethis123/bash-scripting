#!/usr/local/bin/bash

# Author: Chow Jia Ying <chowjiaying211@gmail.com>
# Date created: 19 Dec 2022
# Last modified: 19 Dec 2022
# Description: Monitors server performance and logs information into a file
# Usage: Give execution permissions to this script, then run `./performance_checker.sh `
# To automate it, create a crontab entry: 0 * * * * ./performance_checker.sh
# To download to local laptop: 15 * * * * scp -A root@[ip] .

date >> performance.log

ping -c 1 google.com &> /dev/null
if [ "$?" -eq 0 ]; then
  echo "Internet: Connected" >> performance.log
else 
  echo "Internet: Disconnected" >> performance.log
fi

echo "RAM Usage:" >> performance.log
free -h | grep "Mem" >> performance.log

echo "Swap Usage:" >> performance.log
free -h | grep "Swap" >> performance.log

echo "Disk Usage:" >> performance.log
df -h >> performance.log
echo ""

exit 0
