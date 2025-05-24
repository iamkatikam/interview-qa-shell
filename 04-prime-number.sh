#!/bin/bash

# Read input from user
read -p "Enter a number: " num

# Check if the number is less than 2 (not prime)
if [ "$num" -lt 2 ]; then
    echo "$num is not a prime number."
    exit 0
fi

# Loop to check divisibility from 2 to sqrt(num)
for ((i=2; i*i<=num; i++)); do
    if [ $((num % i)) -eq 0 ]; then
        echo "$num is not a prime number."
        exit 0
    fi
done

echo "$num is a prime number."