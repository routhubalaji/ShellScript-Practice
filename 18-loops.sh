#!bin/bash



USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"



LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log" # /var/log/shell-script/16-logs.log


mkdir -p $LOGS_FOLDER

echo "Script started executed at: $(date)" 
if [ $USERID -ne 0 ];
then
    echo -e "$R ERROR:: Please run the script with root privilege... $N"
    exit 1
fi



VALIDATE() {
    if [ $1 -ne 0 ];
    then
        echo -e "Installing $2... $R Failed $N" 
        exit 1
    else
        echo -e "Installing $2... $G Success $N"    
        # exit 0  If we uncomment this line then remaining 2 pacakges will not be installed.
    fi 
}


# dnf list installed mysql &>> $LOG_FILE
# if [ $? -ne 0 ];
# then
#     dnf install mysql -y &>> $LOG_FILE
#     VALIDATE $? "Mysql"
# else
#     echo -e "MySQL already exist ... $Y SKIPPING $N" | tee -a $LOG_FILE   
# fi    

# dnf list installed nginx &>> $LOG_FILE
# if [ $? -ne 0 ];
# then
#     dnf install nginx -y &>> $LOG_FILE
#     VALIDATE $? "nginx"
# else
#     echo -e "Nginx already exist ... $Y SKIPPING $N" | tee -a $LOG_FILE       
# fi  


# dnf list installed python3 &>>  $LOG_FILE
# if [ $? -ne 0 ];
# then
#     dnf install python3 -y
#     VALIDATE $? "Python3" &>>  $LOG_FILE
# else
#     echo -e "python3 already exist ... $Y SKIPPING $N" | tee -a $LOG_FILE    
# fi


for package in $@
do

    # echo "Package name is: $package"-->To pring package names
     dnf list installed $package &>>$LOG_FILE

    # # if exit status is 0, already installed. -ne 0 need to install it
    if [ $? -ne 0 ]; then
        dnf install $package -y &>>$LOG_FILE
        VALIDATE $? "$package"
    else
        echo -e "$package already installed ... $Y SKIPPING $N"
    fi
done



