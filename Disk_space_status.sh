#!/bin/bash

FU=$(df -h|egrep -v "Filesystem|tmpfs"|grep -w logs|awk '{print $5}'|tr -d %)
TO="rajeev.bhargava@ril.com"

if [[ $FU -ge 26 ]]
then
echo "Disk space is low - $FU %"|mail -s "Disk Space alert! " $TO
else
echo "Disk space is proper"
fi
