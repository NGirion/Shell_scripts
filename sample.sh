<<comment
Author: Giridhar
Description: To run sample commands
Start Date: 28/01/2025
comment

#!/bin/bash

# Defining variable and assigning to the value
whom="Hello"

# Printing the output
printf "Hello, %s\n" "$whom"
echo "Hello, $whom"
cat <<< "Hello, $whom"
date
pwd
whoami
uname
uptime
ls

