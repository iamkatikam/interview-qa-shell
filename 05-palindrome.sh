#!/bin/bash

# Read input from user
read -p "Enter a string: " str

# Reverse the string
#rev_str=$(echo "$str" | rev)

rev_str=$(echo "$str" | awk '{ for(i=length;i!=0;i--) x=x substr($0,i,1);} END{print x}')

# Check if the original and reversed strings are the same
if [ "$str" == "$rev_str" ]; then
    echo "\"$str\" is a palindrome."
else
    echo "\"$str\" is not a palindrome."
fi