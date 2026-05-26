

# echo "What is the day today?: "
# read day
# if [ "$day" == "Sunday" ]; then
#     echo -e "Today is $day, \e[31mTake holiday and enjoy\e[0m"

#     else 
#     echo -e "Today is $day, \e[32mGo to school and study well\e[0m "
# fi

#!/bin/bash

echo "What is the day today?: "
read day

# Convert input to lowercase
day=$(echo "$day" | tr 'A-Z' 'a-z')

if [ "$day" == "sunday" ]; then
    echo -e "Today is Sunday, \e[31mTake holiday and enjoy\e[0m"

elif [ "$day" == "monday" ] || [ "$day" == "tuesday" ] || \
     [ "$day" == "wednesday" ] || [ "$day" == "thursday" ] || \
     [ "$day" == "friday" ] || [ "$day" == "saturday" ]; then

    echo -e "Today is $day, \e[32mGo to school and study well\e[0m"

else
    echo -e "\e[33mInvalid input! Please enter a valid day.\e[0m"
fi