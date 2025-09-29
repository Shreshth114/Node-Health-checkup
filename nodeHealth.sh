#!/bin/bash

###############################
# Author: Shreshth

# This script outputs the node health

###############################

#set -x
set -e
set -o pipefail

echo "===Disk Usage==="
df -h

echo -e "\n==== Memory Usage ===="
free -g || vm_stat 2>/dev/null


echo -e "\n==== CPU Cores ===="

if command -v nproc >/dev/null 2>&1;
 then
    nproc
else
    sysctl -n hw.ncpu
fi

echo -e "\n=== Uptime and Load Average ==="
uptime

echo -e "\n====  END OF REPORT ===="
