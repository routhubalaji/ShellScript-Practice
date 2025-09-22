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
        # exit 0  If we uncomment this line then remaining 2 pacakges will not be installed.
    fi 
}


dnf list installed mysql
if [ $? -ne 0 ];
then
    dnf install mysql -y
    VALIDATE $? "Mysql"
fi    

dnf list installed nginx
if [ $? -ne 0 ];
then
    dnf install nginx -y
    VALIDATE $? "nginx"
fi  


dnf list installed python3
if [ $? -ne 0 ];
then
    dnf install python3 -y
    VALIDATE $? "Python3"
fi  

