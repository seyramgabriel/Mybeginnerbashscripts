#QUESTION_6C

#!/bin/bash

#Date created - 20th August, 2023
#Author - Ayetor Gabriel Seyram Kofi
#Description - Script to show disk usage, system uptime, users logged in, or quit requests with inputs of 1, 2, 3, and q respectively 

#while statement to loop echo of options
while true; do
    echo "1. Show disk usage."
    echo "2. Show system uptime."
    echo "3. Show the users logged into the system."
    echo "What would you like to do? (Enter q to quit.)"
    read choice

#case statement to accept input and execute corresponding command
     case "$choice" in
        1)
            df
            ;;
        2)
            uptime
            ;;
        3)
            who
            ;;
        q)
            echo "Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option."
            ;;
    esac
done