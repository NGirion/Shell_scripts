#!/bin/bash

# Function to check disk usage and alert if it exceeds the limit
check_disk_usage() {
  # Set the threshold for disk usage (e.g., 80%)
  THRESHOLD=45
  
  # Get the disk usage percentage for the root partition (or modify the path as needed)
  usage=$(df / --output=pcent | tail -n 1 | tr -d '%')
  
  echo "Current disk usage: $usage%"
  
  # Compare the usage with the threshold
  if [ "$usage" -ge "$THRESHOLD" ]; then
    echo "Warning: Disk usage has exceeded $THRESHOLD%! Current usage is $usage%."
  else
    echo "Disk usage is within the acceptable limit."
  fi
}

# Call the function to check disk usage
check_disk_usage

