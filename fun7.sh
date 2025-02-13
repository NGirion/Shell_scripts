#!/bin/bash

# Creating a function to delete a file

delete_file() {
                 if  [ -f "$1" ]; then
				       echo "Are you sure you want to delete the file '$1' ? (y/n)"
					   read -r confirmation
					   if [[ "$confirmation" == "y" || "$confirmation" == "Y" ]]; then
				       rm -rf "$1"
				       echo "File $1 deleted successfully......"
				       else
					   echo "File $1 was not deleted"
					   fi
				else
				      echo "Error: File $1 does not exists"
				fi
}

# Calling the function and passing file name as an arguement				
delete_file "$1"
