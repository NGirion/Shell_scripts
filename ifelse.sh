#!/bin/bash

directory="myproject"

if [ -d "$directory" ] ; then


sh_files=$(find $directory -type f -name "*.sh")

if [ -n "$sh_files" ]; then
	echo "found the following .sh files in myproject directory"

	echo "===================================================="

	IFS=$'\n'
for file in $sh_files
do
        echo "$file"
done


else
        echo "No .sh files found in myproject directory"	
fi

else        
	echo "myproject directory doesn't exists"

fi
