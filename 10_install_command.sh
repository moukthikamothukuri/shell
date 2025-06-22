#!/bin/bash

USERID=$(id -u)

if [ USERID=$ -ne 0 ]
then
echo "ERROR:: please run with the root access"
else 
echo "you are good to go"
fi

dnf install mysql -y