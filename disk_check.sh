#!/bin/bash
PATH=/usr/sbin:/usr/bin:/sbin:/bin

# To check disk usage using if-elif-else statement

threshold_critical=20
threshold_warning=18
current_usage=$(df -h / | awk 'NR==2 {print $5}' | cut -d'%' -f1)

echo "Current disk usage: $current_usage%"

# Define color codes
RED='\033[31m'
GREEN='\033[32m'
YELLOW='\033[33m'
RESET='\033[0m'

if [ $current_usage -ge $threshold_critical ]; then
    echo -e "${RED}Disk usage is critical ($current_usage%). Take immediate action${RESET}"
elif [ $current_usage -ge $threshold_warning ]; then
    echo -e "${YELLOW}Disk usage is high ($current_usage%). Consider freeing up space.${RESET}"
else
    echo -e "${GREEN}Disk usage is normal ($current_usage%).${RESET}"
fi
