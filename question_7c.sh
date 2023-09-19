#QUESTION_7C

#!/bin/bash

#Date created - 20th August, 2023
#Author - Ayetor Gabriel Seyram Kofi
#Description - Script to create a new user with their password and add the new user to an existing group right away

# Ensure three arguments are provided in running the script
if [ $# -ne 3 ]; then
    echo "Usage: $0 <username> <groupname> <password>"
    exit 1
fi

# Declare variables for the three arguments required for the script
username="$1"
groupname="$2"
password="$3"

# Create the user with the provided information
sudo useradd -m -g "$groupname" "$username"
echo "$username:$password" | sudo chpasswd

# Print the created username and the password
echo "User $username created with password $password"

