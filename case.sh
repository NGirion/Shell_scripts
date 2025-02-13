#!/bin/bash

# Example of a case statement

echo "Menu."
echo "======"
echo "1. Display the date"
echo "2. Display the calendar"
echo "3. Display the current directory"
echo "4. Exit"

read -p "Enter your choice: " choice

case $choice in

     1)
        date
        ;;

     2)
        cal
        ;;

     3)
        pwd
        ;;

     4)
        echo "Exiting the program...."
        exit
        ;;

     *)
        echo "Invalid choice: $choice. Please enter a number between 1 and 4."
        ;;
esac

