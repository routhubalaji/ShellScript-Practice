
#!bin/bash

USERID=$(id -u)

echo "user id $USERID"

if[ $USERID -ne 0 ];
then
    echo "ERROR:: Please run with root privilege"
fi

dnf install mysql -y


if[ $? -ne 0 ];
then
    echo "ERROR:: Mysql Installation failed"
else
    echo "SUCCESS:: Mysql Installation successful"    
fi