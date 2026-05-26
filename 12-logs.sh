#!/bin/bash

USERID=$(id -u)
LOGS_DIR="/var/log/shell-script/"
LOGS_FILE="$LOGS_DIR/$0.log"  #/home/ec2-user/shell-logs/12-functions-and-logs.sh


# Check if the root access or not

if [ $USERID -ne 0 ]; then
    echo "Please run the script with root access"
    exit 1

fi

# first arg --> what are you trying to install
# second arg --> exit code

VALIDATE()
{
    if [ $2 -ne 0 ]; then   
        echo "Installing $1 is .... FAILED"
        exit 1
    else
        echo "Installing $1 is .... SUCCESS"
    fi
}

#  echo "I am continuing..."
dnf list installed mysql &>> $LOGS_FILE

if [ $? -eq 0 ]; then
  
    echo "MySql is already installed ... SKIPPING"
else
    echo "Installing MySql"
    dnf install mysql -y &>> $LOGS_FILE
    VALIDATE MySQL $?
fi

dnf list installed nginx &>> $LOGS_FILE
if [ $? -eq 0 ]; then
    echo "nginx is already installed ... SKIPPING"
else   
    echo "Installing nginx"
    dnf install nginx -y  &>> $LOGS_FILE
    VALIDATE MySQL $?
fi

