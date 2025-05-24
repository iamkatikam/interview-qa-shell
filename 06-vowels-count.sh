#!/bin/bash

# Check if a statement is provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 \"Please pass a statement as an argument\""
    exit 1
fi

# Store the input statement
statement="$1"

# Convert statement to lowercase and count vowels
vowel_count=$(echo "$statement" | tr '[:upper:]' '[:lower:]' | grep -o '[aeiou]' | wc -l)

# Output the result
echo "The statement '$statement' contains $vowel_count vowels."