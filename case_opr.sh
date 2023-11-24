#!/bin/bash

echo "Provide an option"

echo "Enter 1 for print date"

echo "Enter 2 for prints calender"

echo "Enter 3 for listing files"

read choice

case $choice in

1)date;;
2)cal;;
3)ls;;
*)echo "Please enter valid input"
esac
