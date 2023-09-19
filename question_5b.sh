#QUESTION_5B

#!/bin/bash

#Date created - 20th August, 2023
#Author - Ayetor Gabriel Seyram Kofi
#Description - Script to check whether a file or directory is a regular file, directory, or some other type of file

#This will ensure a user enters an argument, which is the file or directory to be checked
if [ $# -ne 1 ]; then
    echo "Usage: $0 <file_or_directory>"
    exit 2
fi

#This is to alert the user if the file or directory entered as argument doest not exist
if [ ! -e "$1" ]; then
    echo "Error: $1 does not exist."
    exit 2
fi

#If the file or directory entered exists, this checks whether the file or directory is a file or directory or some other type of file
if [ -f "$1" ]; then
    echo "$1 is a regular file."
    exit 0
elif [ -d "$1" ]; then
    echo "$1 is a directory."
    exit 1
else
    echo "$1 is some other type of file."
    exit 2
fi