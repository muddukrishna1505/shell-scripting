#!/bin/bash

LOGS_DIR=/root/logs
LOGS_FILE="$LOGS_DIR/$0.log"

validate() {
    if [ $? -eq 0 ]; then
    echo -e "\e[35m$1 is already installed\e[0m"
    else
    echo -e "\e[31m$1 is not installed\e[0m"
fi
}
mysql --version >> $LOGS_FILE

validate "MYSQL"

nginx --version >> $LOGS_FILE
validate "NGINX"

apache2 -v >> $LOGS_FILE
validate "APACHE2"