#!/bin/bash

# Define the file to process
file="02-input.txt"  # Replace with your actual file name

# Check if the file exists
if [ ! -f "$file" ]; then
    echo "File not found!"
    exit 1
fi

# Transpose the file
awk '
{
    for (i = 1; i <= NF; i++) {
        a[i, NR] = $i
    }
}
END {
    for (i = 1; i <= NF; i++) {
        for (j = 1; j <= NR; j++) {
            printf "%s ", a[i, j]
        }
        print ""
    }
}' "$file" > 02-output.txt

# Loop through each field in the current line
# and store it in an array
# The array is indexed by the field number and the line number
# a[i, j] means the i-th field of the j-th line
# NR is the number of records (lines) processed so far
# NF is the number of fields in the current record (line)

echo "Transposed data has been written to 02-output.txt"