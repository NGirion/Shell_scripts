#!/bin/bash

# Example of nested for loop

for i in {1..3}
do 
        for j in {1..3}
		do 
		       echo -n "$(( i * j )) "
		done
		echo 
		
done
