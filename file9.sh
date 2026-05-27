#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "You are not a root user. Please run this script as a root user"
    exit 1
fi

echo "I'm continuing ..."