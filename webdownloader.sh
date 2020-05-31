#!/bin/bash
echo

#prompt user to type a website URL to download or to type exit to quit
read -p "Please enter the download URL or enter exit: " option
echo
if [ $option = "exit" ]; 
then 
echo "Goodbye"
# exit program if the user does not provide a www but enters exit instead
else
    read -p "type the location you would like the download file to be stored: " location 
    #prompt the users to type a download location folder. In this case a folder called Downloads
    wget -P "$location" "$option"
        echo you are downloading "$option" to "$location"
        #repeat until user types exit
fi

exit 0