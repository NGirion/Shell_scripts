#!/bin/bash

# Defining an associative array

declare -A fruits

# Addition of elements to the associative array

fruits["apple"]="red"

fruits["Banana"]="yellow"

fruits["Grapes"]="purple"

# Accessing the values using keys

echo "The color of the apple is: ${fruits["apple"]}"

echo "The color of the banana is: ${fruits["Banana"]}"

echo "The color of grapes is: ${fruits["Grapes"]}"

fruits["Lime"]="Green"

echo "The color of the lime is: ${fruits["Lime"]}"


# Looping through the keys and values

echo "List of fruits and their colors:"
for fruit in "${!fruits[@]}"; do 
	echo "$fruit is ${fruits[$fruit]}"
done

# Find the length of an array

echo "The length of the array is ${#fruits[@]}"






