#!/bin/bash

echo "What is the day today?: "
read day
if [ "$day" == "Sunday" ]; then
    echo -e "Today is $day, \e[31mTake holiday and enjoy\e[0m"

    else 
    echo -e "Today is $day, \e[32mGo to school and study well\e[0m "
fi