#QUESTION_6B

#!/bin/bash

#Date created - 20th August, 2023
#Author - Ayetor Gabriel Seyram Kofi
#Description - Script to request number of lines a user wants to read in the "/etc/passwd" file and display them

#Request for user to enter desired number of lines to read
echo -n "How many lines of /etc/passwd would you like to see? "
read num_lines

sleep 2s

#Ensure the user enters only numbers and nothing else
if [[ ! "$num_lines" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid number."
    exit 1
fi

#Loop to display number of lines indicated by user in input above
line_number=1
while IFS= read -r line; do
    if [[ "$line_number" -le "$num_lines" ]]; then
        echo "$line"
    else
        break
    fi
    ((line_number++))
done < /etc/passwd
