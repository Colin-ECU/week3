#!/bin/bash

#Colours to be applied to mathmatic functions
BLUE="\e[34m"
GREEN="\e[32m"
RED="\e[31m"
PURPLE="\e[35m"
NORMAL="\e[97m"

echo
echo Welcome to this simple Bash Calulator #Greeting
#This simple calculator will perfomr the 4 basic calulations above
#This section below is where the user is prompted for the firdst variable
echo
echo Please enter the values of the numbers you want to process

read -p "First Number: " num1
echo
read -p "Second Number: " num2

echo
#This is where the user is shown the function, number and colour of the process required
echo Below are the 4 mathmatical processing options
echo
# assign colours and numbers to the calculator functions
echo -e ${BLUE} 1 - Addition 
echo -e ${GREEN} "2 - Subtraction"
echo -e ${RED} "3 - Multiplication"
echo -e ${PURPLE} "4 - Division" ${NORMAL} 
echo
echo
#The use of the NORMAL colour after Division just ceases PURPLE and makes next text white
#This is where the user is prompted for the function they want performed
read -p "Next please type the number of the function you want performed: " num

#This script takes the first and second values and then applies the selected function number
#The selection of functions is 1 to 4, if the user enters >4 then an error is generated
if [ $num -eq 1 ]; then
    echo -e ${BLUE}    
    echo -e Answer is: $(( $num1 + $num2 ))
    # code if match
elif [ $num -eq 2 ]; then
    echo -e ${GREEN}  
    echo -e Answer is: $(( $num1 - $num2 ))
    # code if match
elif [ $num -eq 3 ]; then
    echo -e ${RED} 
    echo -e Answer is: $(( $num1 * $num2 ))
    # code if match 
elif [ $num -eq 4 ]; then
    echo -e ${PURPLE} 
    echo -e Answer is: $(( $num1 / $num2 ))
    # code if match
else    echo ERROR - Please enter a valid number

fi

exit 0