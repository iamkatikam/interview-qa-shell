#!/bin/bash

# Check if a number is provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <number>"
    exit 1
fi

# Store the input number
number="$1"

# Check if the input is a valid integer
if ! [[ "$number" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Please provide a valid integer."
    exit 1
fi

# Check if the number is even or odd
if [ $((number % 2)) -eq 0 ]; then
    echo "$number is even."
else
    echo "$number is odd."
fi