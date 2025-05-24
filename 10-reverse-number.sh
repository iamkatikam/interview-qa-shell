#!/bin/bash

# Prompt user for input
echo "Enter a number: "
read number

# Check if input is a valid number
if [[ ! $number =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a valid positive integer."
    exit 1
fi


# Reverse the number
reversed=""
len=${#number}
for (( i=$len-1; i>=0; i-- )); do
    reversed="$reversed${number:$i:1}"
done

# Display the result
echo "Reversed number: $reversed"