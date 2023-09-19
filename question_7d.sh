#QUESTION_7D

#!/bin/bash

#Date created - 20th August, 2023
#Author - Ayetor Gabriel Seyram Kofi
#Description - Script to print days of the week as output from number entered, where Sunday equals to 1 and so on.

#Request for user to input a number from 1 to 7
read -p "Enter a number (1-7): " day_number

#case statement to display a day's name that corresponds with the number inputted
case "$day_number" in
    1) echo "Sunday";;
    2) echo "Monday";;
    3) echo "Tuesday";;
    4) echo "Wednesday";;
    5) echo "Thursday";;
    6) echo "Friday";;
    7) echo "Saturday";;
    *) echo "Error: Invalid input";;
esac
