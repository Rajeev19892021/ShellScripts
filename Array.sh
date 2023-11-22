#!/bin/bash

myArray=(1 5 8 Hi "How are you")

echo "${myArray[1]}"

echo "${myArray[*]}"

echo "No of values or Length of the Array is ${#myArray[*]}"

echo "${myArray[*]:1:3}"
echo "${myArray[*]:2:1}"

myArray+=(50 60 70 )

echo "values of array are ${myArray[*]}"
