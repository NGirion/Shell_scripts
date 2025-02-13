#!/bin/bash

# Example of defining an array

fruits=("Apple" "Banana" "Orange" "Pine apple")


# Accessing the elements of an array

echo "${fruits[0]}"

echo "${fruits[2]}"

echo "${fruits[1]}"

echo "${fruits[3]}"

echo "${fruits[2]}"

fruits+=("Mango")

echo "${fruits[4]}"

# To find the length of an array

echo "Length of the array is ${#fruits[@]}"

for element in "${fruits[@]}"; do
        echo "$element"
done
