#!/bin/bash

# Prompt user for input
echo "Enter the number of Fibonacci numbers to generate: "
read n

# Check if input is a valid positive integer
if [[ ! $n =~ ^[0-9]+$ ]] || [ $n -lt 1 ]; then
    echo "Error: Please enter a valid positive integer."
    exit 1
fi

# Initialize first two Fibonacci numbers
a=0
b=1

# Handle edge cases
if [ $n -eq 1 ]; then
    echo "Fibonacci sequence: 0"
    exit 0
elif [ $n -eq 2 ]; then
    echo "Fibonacci sequence: 0 1"
    exit 0
fi

# Print first two numbers
echo -n "Fibonacci sequence: 0 1"

# Generate and print the rest of the sequence
for ((i=3; i<=n; i++)); do
    # Calculate next Fibonacci number
    c=$((a + b))
    echo -n " $c"
    # Update variables for next iteration
    a=$b
    b=$c
done

# Print newline at the end
echo ""