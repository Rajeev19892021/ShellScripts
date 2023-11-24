#!/bin/bash

add(){
num1=$1
num2=$2
read -p "Enter first number " num1
read -p "Enter second number " num2

 sum=$(( $num1 + $num2 ))
echo " Sum of two nums are $sum "
}


#add $num1 $num2 

mul(){
num1=$1
num2=$2
read -p "Enter first number " num1
read -p "Enter second number " num2
 sum=$(( $num1 * $num2 ))
echo " Multiplication of two nums are $sum "
}

sub(){
num1=$1
num2=$2
read -p "Enter first number " num1
read -p "Enter second number " num2
 sum=$(( $num1 - $num2 ))
echo " Substraction of two nums are $sum "
}

echo "Enter 1 for addtion"
echo "Enter 2 for Multiply"
echo "Enter 3 for Substraction"

read choice

case $choice in
1)add ;;
2)mul ;;
3)sub ;;
*)echo "Please enter valid input" ;;
goto case
esac
 


