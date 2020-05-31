#!/bin/bash
# Loop checking for filenames and directories
# This file name and directory checker is executed by typing the file to be checked
# after this file.  The input check comes from the < $1 at the done level.
#In this case the file is applied to the accompanying file called filenames.txt
#Its function is to either locate all files and folders and ID them as such
#If it cant decide it provides the response of It doesnt know what it is
while read line
do 
    if  [[ -f $line ]]; 
    then
          echo "$line - That is a file"
    elif [[ -d $line ]];
    then
          echo "$line - That is a Directory"
    else 
          echo "$line - I dont know what that is"
    fi
done < $1