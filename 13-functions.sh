
#!bin/bash

USERID=$(id -u)
  
if [ $USERID -ne 0 ];
then
    echo "ERROR:: Please run the script with root privilege"
    exit 1
fi



VALIDATE() {
    if [ $1 -ne 0 ];
    then
        echo "ERROR:: $2 Installation failed"
        exit 1
    else
        echo "SUCCESS:: $2 Installation successful"    
        # exit 0
    fi 
}



dnf install mysql -y
VALIDATE $? "Mysql"

dnf install nginx -y
VALIDATE $? "nginx"

dnf install mongodb-mongosh -y
VALIDATE $? "mongodb-mongosh"