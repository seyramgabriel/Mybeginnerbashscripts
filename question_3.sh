# QUESTION_3

#!/bin/bash

#Date created - 20th August, 2023
#Author - Ayetor Gabriel Seyram Kofi
#Description - Script to ensure online transaction limit is not exceeded

# Pleasantry
echo "Welcome, Kofi!"

# Variable for approved credit limit in USD
approved_credit_limit=2000

# Function to perform transaction
perform_transaction() {
    read -p "Enter the transaction amount: " transaction_amount

    if (( $(echo "$transaction_amount" <= "$approved_credit_limit" | bc -l) )); then
        echo "Transaction approved. Thank you for your purchase!"
    else
        echo "Transaction declined. Transaction amount exceeds your credit limit."
    fi
}
perform_transaction

