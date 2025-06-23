#!/bin/bash


USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "ERROR:: please run with the root access"
exit 1 #give other than 0
else 
echo "you are good to go"
fi
#validate function takes input as exit status, what command they tried to install
VALIDATE(){
	if [ $1 -eq 0 ]
then
echo "$2 it is successful"
else 
echo "$2 fail"
exit 1

}

dnf list installed mysql
# check if it is installed or not the $? should be 0
# if not installed, the expression is not 0.expression is true
if [ $? -ne 0]
then
echo "MYSQL is not installed. going to install it"
dnf install mysql -y
VALIDATE $? "MYSQL"

else 
echo "MYSQL is already installed... nothing to do"

dnf list installed mysql
# check if it is installed or not the $? should be 0
# if not installed, the expression is not 0.expression is true
if [ $? -ne 0]
then
echo "MYSQL is not installed. going to install it"
dnf install mysql -y
VALIDATE $? "MYSQL"

else 
echo "MYSQL is already installed... nothing to do"

dnf list installed python3
# check if it is installed or not the $? should be 0
# if not installed, the expression is not 0.expression is true
if [ $? -ne 0]
then
echo "python3 is not installed. going to install it"
dnf install python3 -y
VALIDATE $? "python3"

else 
echo "MYSQL is already installed... nothing to do"

dnf list installed nginx
# check if it is installed or not the $? should be 0
# if not installed, the expression is not 0.expression is true
if [ $? -ne 0]
then
echo "nginx is not installed. going to install it"
dnf install nginx -y
VALIDATE $? "nginx"

else 
echo "nginx is already installed... nothing to do"




