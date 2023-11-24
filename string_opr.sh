#!/bin/bash

myvar="My name is Rajeev, how are you!"

echo "length of the var is ${#myvar}"


echo "Upper case --- ${myvar^^}"

echo "Lower case --- ${myvar,,}"

echo "replace Rajeev with paul -- ${myvar/Rajeev/Vinay}"

echo "Slice of the word from line -- ${myvar:11:6}"
