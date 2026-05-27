#!/bin/bash #shebang line

# Num1=10
# Num2=20

# Sum=$((Num1 + Num2))
# echo "The sum of Num1 and Num2 is: $Sum"

#Array

Movies=("Bahubali" "KGF" "RRR" "Vikram" "Ponniyin Selvan")
echo "The first movie is: ${Movies[0]}"
echo "The second movie is: ${Movies[1]}"
echo "All movies are: ${Movies[@]}"
echo "The number of movies is: ${#Movies[@]}"
echo "The length of the first movie name is: ${#Movies[0]}"
