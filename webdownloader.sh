#!/bin/bash
# This piece of work was inspired by ECU student Phil Higgs, Sunday 31 May 2020 07:37 am
#This work help to move me from the closed if /then/etc statement I had, which di produce a good output but wasnt a proper loop.
# I could reall undersatnd Phill Higgs logical compared to many on open source so have access some pointers to move me in the right direction.  
# Many of the contingencies on this version dont work properly but it is much closer and need more tweking around.  Today was over 12 hours 
# Revision and cleaning up these type of file and github in preparation of handing this portfolio assessemnt in asap! 
# The plan being to learn through the process of reviewion of the wholecourse and then do the quiz, and be almost ready to hand in the
#the portfolio work so that I have a slight chance of being able to deliver an individual piece for the final assessment.
while true;
do
    # Prompt user to type a website URL to download or to type exit to quit.
    read -p "Please enter the download URL or enter exit: " option
    if [[ $option == "exit" ]];
    then
        echo "Goodbye"
        exit
        # Exit program if the user does not provide a URL but enters exit instead.
    else
        read -p "Type the location you would like the download file to be stored: " location
        # Prompt the user to type a download location folder.
        if [[ -d "$location" ]]; # This if statement checks to see if the location is a valid folder.
            then
                read -p "Confirm this is the folder you want to use? (yes/no): " yn # This section confirms the storage location is ok.
                echo
                if [[ $yn = "no" ]];
                then
                mkdir $location # If the folder entered cannot be located then a new folder is created and the user is prompted.
                echo This folder could not be located however a new folder will be created for you.
            else 
                echo The program will use your nominated folder..Thank you.     
            fi
        fi
    fi
wget -q --show-progress --progress=bar -P $option $location
echo you have downloaded $option to $location
# Repeat until user types exit.

done