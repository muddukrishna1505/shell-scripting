#!/bin/bash

LOGS_DIR=/root/logs
LOGS_FILE="$LOGS_DIR/$0.log"

mysql --version >> $LOGS_FILE

if [ $? -eq 0 ]; then
    echo -e "\e[35mMYSQL is already installed\e[0m"
    else
    echo -e "\e[31mMYSQL is not installed\e[0m"
fi

nginx --version >> $LOGS_FILE
if [ $? -eq 0 ]; then
    echo -e "\e[35mNGINX is already installed\e[0m"
    else
    echo -e "\e[31mNGINX is not installed\e[0m"
fi

apache2 -v >> $LOGS_FILE
if [ $? -eq 0 ]; then
    echo -e "\e[35mAPACHE is already installed\e[0m"
    else
    echo -e "\e[31mAPACHE is not installed\e[0m"
fi