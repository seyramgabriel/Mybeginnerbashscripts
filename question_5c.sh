#QUESTION_5C

#!/bin/bash

#Date created - 20th August, 2023
#Author - Ayetor Gabriel Seyram Kofi
#Description - Script to confirm the exit status of a command

# Execute the command. Note that "sudo" is required for the command "cat /etc/shadow"
sudo cat /etc/shadow

# Check the exit status of the command you have just run/executed 
if [ $? -eq 0 ]; then
    echo "Command succeeded"
    exit 0
else
    echo "Command failed"
    exit 1
fi
