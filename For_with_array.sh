#!/bin/bash
myArray=(1 5 10 Raje Kuldeep)

length=${#myArray[*]}

for (( i=0;i<$length;i++ ))
do
echo "values of array is ${myArray[$i]}"
done
