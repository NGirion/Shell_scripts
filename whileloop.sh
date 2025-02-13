#!/bin/bash

# Example of a while loop reading lines from a file

filename="while.sh"

echo "Content of the file :"
while IFS= read -r line
do 
       echo "$line"	
done < "$filename"       


