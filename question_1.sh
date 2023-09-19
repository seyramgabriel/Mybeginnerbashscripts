#Question_1

#!/bin/bash

#Date Created - 20th August, 2023
#Author - Ayetor Gabriel Seyram Kofi
#Description - This script is to help a client set up a new pin after confirming identity of the client using visa card number suffix and CVC

#Declaring variables to loop a 3 attempt pin set up
max_reattempts=2
attempts=1

#Function to set pin
set_pin() {
#Pleasantries
echo "Welcome to PIN Setup"

sleep 2s

#Requesting new pin in 20 seconds
echo "Enter a new PIN in 20 seconds: "

if read -s -t 20 PIN1; then
   echo "Confirm your new PIN in 20 seconds"
else
   echo "Timeout, no input entered in 20 seconds"
   set_pin
fi

sleep 2s

#Requesting confirmation of new pin in 20 seconds
if read -s -t 20 PIN2; then
   echo "Wait for validation of pins"
   sleep 2s
else
   echo "Timeout, no input entered in 20 seconds"
   set_pin
fi

#validation of pins
if [ $PIN1 = $PIN2 ]; then
        pin=$PIN1
        echo "PIN successfully set."
        exit 0
else
        echo "PINs do not match. Please try again."
fi

sleep 2s

#loop for set_pin function
echo "You have 3 maximum attempts"

sleep 2s

echo "You have done $attempts attempt(s)"

sleep 2s

while [ $attempts -le $max_reattempts ]; 
do   
    attempts=$((attempts+1)) 
    set_pin
done

#Indicating exhausted number of attempts
echo "Maximum attempts reached. Exiting."

sleep 2s

exit 1
}


#Validating card digits and CVC before pin set up
#asssumption is that Kofi has a sheet with the XXXXXXX4412 with CVC of 113
 
#Pleasantries
echo "Welcome to RBC! Please insert your card"

sleep 2s

#Requesting card number suffix and CVC within 20 seconds each
echo "Please enter the last four digits on your RBC card in 20seconds: "

if read -s -t 20 card_digits; then
   echo "You have entered the last four digits on your card"
   sleep 2s
else
   echo "Timeout, no input received within 10 seconds"
   exit 1
fi

echo "please enter your CVC in 20 seconds: "

if read -s -t 20 CVC; then
   echo "You have entered your CVC"
   sleep 2s
else
   echo "Timeout, no input received within 20 seconds"
   exit 1
fi

sleep 2s

#validation of inputs
expected_card_number_suffix=4412
expected_cvc=113

echo "Wait for validation of your inputs"

sleep 2s

if [ $card_digits = $expected_card_number_suffix ]; then
        echo "card_number_suffix verified."
else
        echo "card_number_suffix not verified. Exiting."
        exit 1
fi

sleep 2s

if [ $CVC = $expected_cvc ]; then
        echo "CVC verified."
else
        echo "CVC not verified"
        exit 1
fi

sleep 2s

#Calling the set_pin function
set_pin
