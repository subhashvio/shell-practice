#!/bin/bash

USERID=$(id -u)

# Check if the root access or not

if [ $USERID -ne 0 ]; then
    echo "Please run the script with root access"
    exit 1

fi

#    echo "I am continuing..."
dnf list installed mysql

if [ $? -eq 0 ]; then
    echo "MySql is already installed... SKIPPING"
else

    echo "Installing MySQL"
    dnf install mysql -y

    if [ $? -ne 0 ]; then
        echo "Installing MySql is... FAILED"
        exit 1
    else   
        echo "Installing MySql is... SUCCESS"
    fi
fi

#    Installing ngnix"
dnf list installed ngnix

if [ $? -eq 0 ]; then
    echo "ngnix is already installed... SKIPPING"
else

    echo "Installing ngnix"
    dnf install ngnix -y

    if [ $? -ne 0 ]; then
        echo "Installing ngnix is... FAILED"
        exit 1
    else   
        echo "Installing ngnix is... SUCCESS"
    fi
fi