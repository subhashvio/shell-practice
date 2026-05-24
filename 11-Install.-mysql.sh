#!/bin/bash

USERID=$(id -u)

# Check if the root access or not

if [ $USERID -ne 0 ]; then
    echo "Please run the script with root access"
    exit 1

fi

#    echo "I am continuing..."

echo "Installing MySQL"
dnf install mydfsql -y

if [ $? -ne 0 ]; then
    echo "Installing MySql is... FAILED"

else   
    echo "Installing MySql is... SUCCESS"
fi
