#!/bin/bash

declare -A myArray
myArray=( [Name]=Rajeev [Age]=33 [City]=paris )
echo "${myArray[Name]}"
