#!?bin/bash

# Example of until loop 

value=1

until [ $value -gt 5 ]; do
	echo "value is $value"
	((value++))
done	
	
