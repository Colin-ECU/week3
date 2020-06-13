#!/bin/bash

# Colours to be applied to mathmatic functions.
BLUE="\e[34m"
GREEN="\e[32m"
RED="\e[31m"
PURPLE="\e[35m"
NORMAL="\e[97m"

# This changes Dir to the location of the PasswordCheck folder.
cd ~/scripts/portfolio/week2/

# This runs the passwordCheck script.
./passwordCheck.sh 

# If the secret password matches the sha256sum then the 3 options are offered.
# A Main Menu position is established by the function main_menu.
# This provides the reference point for the program to return to once completing the option.

Function main_menu {
while true; 
do
 
        echo -e ${BLUE} "1. Create a folder" 
        echo -e ${BLUE} "2. Copy a folder" 
        echo -e ${BLUE} "3. Set a password"
        echo -e ${BLUE} "4. Calculator"
        echo -e ${BLUE} "5. Create Week Folders"
        echo -e ${BLUE} "6. Check File Names"
        echo -e ${BLUE} "7. Download a File"
        echo -e ${NORMAL} "8. Exit"

        read -p "Please type your selection from the list here:  " option
        
        # The colours are attributed to the options for user to select.  

        # The user is asked to enter an option selection from the list
        
    if [ $? -eq 0 ]; then
        
        # If the option selected is true then the below path will be followed and file executed
        # Each option will be directed to the relevant script file and run
        # An option other than 1 - 8 will result in and Incorrect option error
      
      case $option in

        1)  ~/scripts/portfolio/week2/foldermaker.sh
        ;;
        2)  ~/scripts/portfolio/week2/foldercopier.sh
        ;;
        3)  ~/scripts/portfolio/week2/setPassword.sh
        ;;
        4)  ~/scripts/portfolio/week3/calculator.sh
        ;;
        5)  ~/scripts/portfolio/megafoldermaker.sh
        ;;
        6)  ~/scripts/porfolio/week3/filenames.sh
        ;;
        7)  ~/scripts/portfolio/week3/webdownloader.sh
        ;;
        8)  exit 0
        ;;
        *)  echo "Incorrect option"
       esac
        
    else
        # If user password entered is not correct the Access Denied error will be displayed
        # The colour coded Access Granted and Access denied are generated from the passwordCheck file
        echo 
        exit 1

    fi

done
}
        # This is the loop back to Main_Menu when the option has been executed
main_menu

exit 0