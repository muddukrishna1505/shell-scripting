#!/bin/bash

USERID=$(id -u)
LOGS_DIR=/root/logs
LOGS_FILE="$LOGS_DIR/$0.log"
if [ $USERID -ne 0 ]; then
    echo -e "\e[31mYou are not a root user. Please run this script as a root user\e[0m"
    exit 1
fi

#arg1 - what are you trying to install
#arg2 - exit code

validate() {
    if [ $2 -ne 0 ]; then
        echo -e "\e[31m$1 server installation failed\e[0m"
        exit 1

        else
        echo -e "$1 server installation \e[32msuccessful\e[0m"
    fi
}
dnf install mysql-server -y >> $LOGS_FILE

if [ $? -eq 0 ]; then
    echo -e "\e[35mMYSQL is already installed ... Skipping installation\e[0m"

else
validate "MYSQL" $?
fi
