#!/bin/bash

# Validate input arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <start_index> <end_index>"
    exit 1
fi

start=$1
end=$2

# Check if start is less than end
if [ "$start" -gt "$end" ]; then
    echo "Error: Start index must be less than end index."
    exit 1
fi

# Generate the file/ Clear the file if it already exists
> inputFile

for ((i=start; i<end+1; i++)); do
    echo "$i, $((RANDOM % 999))" >> inputFile  # Generate random number (0-999)
done

echo "File 'inputFile' generated with $(($end - $start + 1)) entries."
