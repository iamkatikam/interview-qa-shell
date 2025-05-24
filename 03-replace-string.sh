#!/bin/bash

# Define the directory containing the text files
dir="$PWD"  # Replace with your actual directory
echo "Current directory: $dir"

# Define the search and replacement strings
search_string="UNIX"   # Replace with the string you want to find
replace_string="Linux"  # Replace with the string you want to replace it with

# Check if the directory exists
if [ ! -d "$dir" ]; then
    echo "Directory not found!"
    exit 1
fi

# Find and replace in all text files
find "$dir" -type f -name "*.txt" | while read file; do
    sed -i "s/$search_string/$replace_string/g" "$file"
    echo "Updated: $file"
done

echo "Replacement complete."