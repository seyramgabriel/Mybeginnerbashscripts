#QUESTION_6A

#!/bin/bash

#Date created - 20th August, 2023
#Author - Ayetor Gabriel Seyram Kofi
#Description - Script to read through "/etc/passwd" file line by line whiles prepending each line with a line number, colon and space

# Initialize line number by declaring a variable
line_number=1

# Loop through each line in /etc/passwd
while IFS= read -r line; do
    echo "$line_number: $line"
    ((line_number++))
done < /etc/passwd
