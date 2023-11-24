#!/bin/bash

#Execute script with root user

if [[ ${UID} -ne 0 ]]
then
echo "Please execute script with Root user..."
#exit 1
fi

#User should provide atleast one argument else guide the user

if [[ $# -lt 1 ]]
then
echo "Usage:${0} USER_NAME COMMENTS "
#exit 1
fi

#Store first argument as user name

USER_NAME=$1

#Incase more than one argument store as comments

shift
COMMENTS=$@

#echo $COMMENTS

#Create password

password=$(date +%s%N)

#Create a user
##useradd -c $COMMENTS -m $USER_NAME


#Check if user is created or not

#if [[ $? -ne 0 ]]
#then
#echo "User account could not be created.."
#exit 1
#fi

#set the password for user

#passwd $PASSWORD $USER_NAME


#check if passwordcreated successfully or not
if [[ $? -ne 0 ]]
then
echo "Passwotd could not be set"
exit 1 
fi



#force password change on first login

#passwd -e $USER_NAME


# Display user name passwors hostname

echo 
echo "Username: $USER_NAME"
echo
echo "Password: $password"
echo
echo $(hostname)
