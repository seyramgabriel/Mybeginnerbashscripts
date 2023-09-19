#QUESTION_7B

#!/bin/bash

#Date created - 20th August, 2023
#Author - Ayetor Gabriel Seyram Kofi
#Description - Script to output items in an array of linux distributions with their sizes

#Declare linux distributions as a variable in an array
linux_distributions=("Ubuntu" "Fedora" "Debian" "CentOS" "Arch Linux")

#loop to print items in the linux_distributions variable
echo "Linux Distributions:"
for distro in "${linux_distributions[@]}"; do
    echo "$distro"
done

#Declare array_size as variable for size of items in linux_distributions array
array_size=${#linux_distributions[@]}

#command to echo size of items in linux_distributions array
echo "Array Size: $array_size"