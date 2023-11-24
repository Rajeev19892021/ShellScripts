#!/bin/bash

read -p "Please enter the site name to check the connectivity" site

ping -c 1 $site

if [[ $? -eq 0 ]]
then 
echo "Successfully connected to $site"
else
echo "Unable to connect to $site"
fi
