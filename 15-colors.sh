#!bin/bash


USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


if [ $USERID -ne 0 ];
then
    echo -e "$R ERROR:: Please run the script with root privilege... $N"
    exit 1
fi



VALIDATE() {
    if [ $1 -ne 0 ];
    then
        echo "Installating $2... $R failed $N"
        exit 1
    else
        echo "Installating $2... $G failed $N"    
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

