#!/bin/bash

file="ifelse.sh"

if [ -f "$file" ]; then
   echo "file $file exists"

else 
     echo "file $file doesn't exists. Creating the file...."
     touch "$file"
     echo "file $file has been created"
fi
