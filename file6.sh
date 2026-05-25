#!/bin/bash
#Printing special variables'
echo "Hello $1 and $2"
echo "The name of the script is $0"
echo "The number of arguments passed is $#"
echo "All variables passed through  $@"
echo "The process id of the script is $$"
echo "The exit status of the last command is $?"
echo "The first argument is $1"
echo "The second argument is $2"    
echo "Who is running thid script? $USER"
echo "The home directory of the user is $HOME"