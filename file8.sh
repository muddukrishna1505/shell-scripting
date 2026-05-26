#!/bin/bash

echo "What is the day today?: "
read day
if [ "$day" == "Sunday" ]; then
    echo "Today is $day, Take holiday and enjoy"

    else 
    echo "Today is $day, Go to school and study well"
fi