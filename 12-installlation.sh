
#!bin/bash

USERID=$(id -u)

# echo "user id $USERID"

if [ $USERID -ne 0 ];
then
    echo "ERROR:: Please run with root privilege"
    exit 1
fi

dnf install mysql -y


if [ $? -ne 0 ];
then
    echo "ERROR:: Mysql Installation failed"
    exit 1
else
    echo "SUCCESS:: Mysql Installation successful"    
    exit 0
fi