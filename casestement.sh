#!/bin/bash

# Example of a case statement 

day="sunday"

case $day in

     monday)
     echo "It's a day: monday"	  
     ;;

     sunday |monday |tuesday |wednesday |thursday |friday |saturday)
     echo "It's a day: sunday"
     ;;

     saturday)
     echo "It's a day: saturday"
     ;;

     *)
     echo "Invalid day"
     ;;
esac     


