#QUESTION_7A

#!/bin/bash

#Date created - 20th August, 2023
#Author - Ayetor Gabriel Seyram Kofi
#Description - Script to check the size of a directory inputted as argument 1

#Check if a directory is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

#Declare argument 1 as variable called directory
directory="$1"

#Check if the provided path is a directory
if [ ! -d "$directory" ]; then
    echo "Error: $directory is not a directory"
    exit 1
fi

#Declare command to check size of inputted directory as variable called "size"
size=$(du -sh "$directory" | cut -f1)

#Print the size of the directory inputted
echo "Size of $directory: $size"