#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "ERROR:: please run with the root access"
exit 1 #give other than 0
else 
echo "you are good to go"
fi

dnf install mysql -y

if [ $? -eq 0 ]
then
echo "it is successful"
else 
echo "fail"
exit 1

fi