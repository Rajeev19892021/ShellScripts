#!/bin/bash

echo "First argument is -- $1"
echo "Second argument is -- $2"
echo "All the arguments are $@"
echo "No of arguments are $#"

for file in $@
do 
echo "File names are $file"
done
