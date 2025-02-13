#!/bin/bash

# Example of a while loop processing user input unitl exit is entered

echo "Enter names (type 'exit' to 'quit):'"

while  true ;
do 
            read -p "Name: " name
			if [ "$name" =  "exit" ]; then
			       break
			fi
			
			echo "Hello ------> $name!"
done

echo "You are exited"
