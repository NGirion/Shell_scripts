#!/bin/bash

# Example of a while loop to calculate a factorial of a number

echo "Enter a number to calculate its factorial:"
read num

factorial=1
counter=$num

while [ $counter -gt 0 ]; do
	factorial=$(( factorial * counter ))
         ((counter--))
done	 

echo "Factorial of $num is : $factorial"
