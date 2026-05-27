#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo -e "\e[31mYou are not a root user. Please run this script as a root user\e[0m"
    exit 1
fi
# echo -e "\e[32mYou are a root user. You can run this script\e[0m"
# echo -e "\e[32mI'm continuing ...\e[0m"

echo "installing MYSQL server"

dnf install mysql-server -y

if [$? -ne 0 ]; then
    echo -e"MYSQL server installation \e[31mfailed\e[0m"
    exit 1

else 
    echo -e "MYSQL server installation \e[32msuccessful\e[0m"
fi
