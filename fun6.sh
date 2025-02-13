#!/bin/bash

# Function to print elements of an array
my_array=("apple" "Banana" "mango")

print_array() {
       local arr=("$@")
       echo "Elements of an Array :"
       for item in "${arr[@]}"; do
	   echo "$item"
       done
}       

# call the function and pass the array
print_array "${my_array[@]}"
