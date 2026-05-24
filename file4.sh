#!/bin/bash

#time=$(date ) #time should be human readable, not in seconds
#echo "Current time: $time"

#I want to see task execution time
start_time=$(date +%s) #time in seconds
# Simulating a task by sleeping for 5 seconds
sleep 10
end_time=$(date +%s) #time in seconds   
execution_time=$((end_time - start_time)) #calculating execution time in seconds
echo "Task execution time: $execution_time seconds"