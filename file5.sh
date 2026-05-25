#!/bin/bash

drink="sprite"

if [ "$drink" == "Thumsup" ]; then
    echo "Thumsup is available"
    echo "Take it and come home"

    elif [ "$drink" == "sprite" ]; then

    echo -e "\e[32mSprite is available \e[0m"
    echo "Take it and come home"

else
    echo "No drink is available"
    echo "simply go home"

fi    