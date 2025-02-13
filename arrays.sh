#!/bin/bash

# Example of defining an array

fruits=("Apple" "Banana" "Orange" "Pine apple")

for element in "${fruits[@]}"; do 
	echo "$element"
done	

