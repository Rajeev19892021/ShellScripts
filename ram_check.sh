#!/bin/bash

Free_Space=$(free -mt|grep Total|awk '{print $4}')
TH=9000

if [[ $Free_Space -lt $TH ]]
then
echo "Warning, Ram is low..$Free_Space M"
else
echo "Ram is sufficient"
fi

