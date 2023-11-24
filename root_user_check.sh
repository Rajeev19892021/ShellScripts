#!/bin/bash
if [[ $UID -eq 0 ]]
then
echo "User is root "
else
echo "user is not root"
fi
