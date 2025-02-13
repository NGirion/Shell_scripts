#!/bin/bash

# store command line arguements in an array
args=("$*")

# Display / accessing arguements

for arg in "${args[@]}"; do
                   echo "$arg"
done

echo "Length of the array is ${#args[@]}"
