#QUESTION_7E

#!/bin/bash

#Date created - 20th August, 2023
#Author - Ayetor Gabriel Seyram Kofi
#Description - Script to tell a user whether a number inputted is an odd or even number 

# Request user to enter a number
read -p "Enter a number: " number

# if statement to check whether the number inputted is odd or even and indicate it to the user
if (($number % 2 == 0)); then
    echo "$number is even"
else
    echo "$number is odd"
fi
