#!/bin/bash
 #If there aren't two arguments to for script
 if [ $# -eq 2 ]; 
 then
     #Print an error and exit
     echo "Error, provide two numbers" && exit 1
 fi

    #For every number between the first argument and the last
    for ((i = 4; i <= 6; i++))
    do
     #Create a new folder for that number with the name week and the number
     echo "Creating directory number $i"
     mkdir "week$i"
 done