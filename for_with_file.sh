#!/bin/bash

file="/home/jioapp/Rajeev/names.txt"


for name in $(cat $file)
do
echo "Name is $name"
done
