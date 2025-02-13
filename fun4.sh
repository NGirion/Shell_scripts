#!/bin/bash

# calculating the sum of two numbers using function

sum() {
	local num1="$1"
	local num2="$2"
	local total=$(( num1 + num2 ))
	echo "Sum of $num1 and $num2 is $total"
}	

# calling a function with arguements
sum 10 20

