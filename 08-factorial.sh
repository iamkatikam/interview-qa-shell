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

# Initialize factorial result
factorial=1

# Calculate factorial
for ((i=1; i<=number; i++)); do
    factorial=$((factorial * i))
done

# Output the result
echo "The factorial of $number is $factorial."