#!/bin/bash

filepath=/home/jioapp/Rajeev/calc1.sh

if [[ -f $filepath ]]
then
echo "File exist.."
else
echo "File does not exist.."
exit 1
fi
