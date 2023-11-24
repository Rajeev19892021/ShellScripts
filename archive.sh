#!/bin/bash

#$========Author========$
#$=====Rajeev Bhargava=====$
#$Thu Nov 23 11:28:39 IST 2023$

PATH_var=/home/jioapp/Rajeev
DEPTH=1
RUN=0
find_var=$(find $PATH_var -maxdepth $DEPTH -type f -size +600M)


# check if the dir present or not
if [ ! -d $PATH_var ]
then
echo "Dir does not exist.. $PATH_var"
exit 1
else
echo "Dir alreday present"

fi

# Check if "Archive folder is present or not"

if [ ! -d $PATH_var/archive ]
then
     mkdir $PATH_var/archive

fi

for i in $find_var
do

if [ $RUN -eq 0 ]
then
echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ===>$PATH_var/archive "
gzip $i || exit 1
mv $i.gz $PATH_var/archive || exit 1
fi

done

echo $?
