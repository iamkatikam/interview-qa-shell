#!/bin/bash

file="01-input.txt"
if [ ! -f "$file" ]; then
    echo "File not found!"
    exit 1
fi

#process the file: extract the words,count the words, sort the words, and print the top 5 words
awk '{for(i=1;i<=NF;i++) {word[$i]++}} END {for(w in word) print w, word[w]}' "$file" | sort -k2,2nr | head -n 5
# The above command does the following:
# 1. `awk '{for(i=1;i<=NF;i++) {word[$i]++}}` - This part processes the file line by line, splitting each line into words and counting their occurrences.
# 2. `END {for(w in word) print w, word[w]}` - After processing all lines, it prints each word along with its count.
# 3. `sort -k2,2nr` - This sorts the output based on the second column (the count) in numeric reverse order.
# 4. `head -n 5` - Finally, it takes the top 5 entries from the sorted list.
# The output will be the top 5 most frequent words in the file along with their counts.


                                                                                                                                                
