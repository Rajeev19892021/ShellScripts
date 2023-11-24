#!/bin/bash


dirpath=/home/jioapp/Rajeev

if [[ -d $dirpath ]]
then
echo "Dir exist .."
else
echo "Dir does not exist.."
echo $?
fi
