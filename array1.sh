#!/bin/bash

# Declare an array to store file names
declare -a files=()

# Populate the array with file names ending .sh in current directory
files=(*.sh)

# Iterate over each file and count the lines of each file
for file in "${files[@]}"; do 
                  line_count=$(wc -l  < "$file")
				  echo "File: $file has $line_count lines."
done				  

