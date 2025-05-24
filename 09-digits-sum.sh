#!/bin/bash

# Check if a number is provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <number>"
    exit 1
fi

# Store the input number
number="$1"

# Check if the input is a valid non-negative integer
if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Error: Please provide a valid non-negative integer."
    exit 1
fi

# Initialize sum
sum=0

# Extract each digit and add to sum
while [ $number -gt 0 ]; do
    digit=$((number % 10))
    sum=$((sum + digit))
    number=$((number / 10))
done

# Output the result
echo "The sum of digits of $1 is $sum."