#!/bin/bash

USERID=$(id -u) #Display user id

LOGS_DIR=/var/log/shell-script
LOGS_FILE=$LOGS_DIR/$0.log

Time_Stamp=[ date "+%Y-%m-%d %H:%M:%S" ]

if [ $USERID -ne 0 ]; then
    echo "$Time_Stamp [Error] Please run with root user &>> LOGS_FILE"
    exit 1
fi

#arg1 - what are you installing
#arg2 - exit codes

validate(){ 

    if [ $2 -ne 0 ]; then
        echo "$Time_Stamp [Error] installing $1 is ... Failed" | tee -a $LOGS_FILE
         exit 1

         else

        echo "$Time_Stamp [INFO] installing $1 is ... SUCCESS" | tee -a $LOGS_FILE

    fi

}

#using for loop

for package in $@
do
        echo "$Time_Stamp [INFO] Installing $package"
         dnf list installed $package &>> $LOGS_FILE

    if [ $? -ne 0 ]; then
         dnf install $package -y &>>$LOGS_FILE
         validate "Installing $package" $?

         else
        echo "$Time_Stamp [INFO] $package is already installed... skipping"

    fi

done