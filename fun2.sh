#!/bin/bash
# Define a function
greet() {
echo "Hello, $1!" # $1 is the first argument passed to the function
}
# Check if a name is passed as an argument
if [ -z "$1" ]; then
echo "Please provide a name."
else
# Call the function with the argument
greet "$1"
fi

