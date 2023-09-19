#QUESTION_2

#!/bin/bash

#Date created - 20th August, 2023
#Author - Ayetor Gabriel Seyram Kofi
#Description - Validation of client's card digits, post code and cvc to accept or decline an online transaction

#Variables to create a 3-attempt online purchase
attempts=1
max_reattempts=2
 
#Function for transaction processing
transaction_process() {
#Pleasantries
echo "Welcome to udemy, Kofi."

sleep 2s

#Expected Values:
Expected_card_digits=1234567812344412
Expected_post_code=T4E5J1
Expected_CVC=113

#Request for client's inputs
echo "Please, enter the 16 digits on your card."

read card_digits

echo "Please, enter your postcode"

read post_code

echo "please enter the CVC: "

read CVC

#Verification of inputted values
if [ $card_digits = $Expected_card_digits ] && [ $post_code = $Expected_post_code ] && [ $CVC = $Expected_CVC ]; then
     echo "Transaction successful"
     exit 0
else
     echo "Transaction declined. You have 3 maximum attempts."
     
     sleep 2s

     echo "You have done $attempts attempt(s)."
     
     sleep 2s

     while [ $attempts -le $max_reattempts ];   
     do
	attempts=$((attempts+1))
	
	sleep 2s
	
	transaction_process
     done
fi

sleep 2s

echo "Transaction declined. Your card has been blocked. Contact your bank."

sleep 2s

exit 1
}

#Calling the function
transaction_process
