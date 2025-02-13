#!/bin/bash

# Color definitions for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
RESET='\033[0m'

# Function to print section headers with color
print_header() {
    echo -e "${BLUE}$1${RESET}"
    echo "----------------------------"
}

# Function to gather OS information
get_os_info() {
    print_header "Operating System Information"
    if uname -a &>/dev/null; then
        uname -a
    else
        echo -e "${RED}Error: Unable to fetch OS information.${RESET}"
    fi
    echo ""
}

# Function to gather CPU information
get_cpu_info() {
    print_header "CPU Information"
    if lscpu &>/dev/null; then
        lscpu
    else
        echo -e "${RED}Error: Unable to fetch CPU information.${RESET}"
    fi
    echo ""
}

# Function to gather memory information (with summarized output)
get_memory_info() {
    print_header "Memory Information"
    if free -h &>/dev/null; then
        free -h | grep -E "total|Mem"
    else
        echo -e "${RED}Error: Unable to fetch memory information.${RESET}"
    fi
    echo ""
}

# Function to gather disk usage information (with summarized output)
get_disk_info() {
    print_header "Disk Usage Information"
    if df -h &>/dev/null; then
        df -h | grep -E "^/dev"
    else
        echo -e "${RED}Error: Unable to fetch disk usage information.${RESET}"
    fi
    echo ""
}

# Function to gather uptime information
get_uptime_info() {
    print_header "Uptime Information"
    if uptime &>/dev/null; then
        uptime
    else
        echo -e "${RED}Error: Unable to fetch uptime information.${RESET}"
    fi
    echo ""
}

# Main function to gather all system info
gather_system_info() {
    timestamp=$(date "+%Y-%m-%d %H:%M:%S")
    echo -e "${GREEN}System Information gathered at: $timestamp${RESET}"
    echo ""
    get_os_info
    get_cpu_info
    get_memory_info
    get_disk_info
    get_uptime_info
}

# Main function to allow user to select parts of the system info to gather
selective_gather() {
    echo -e "${YELLOW}Select which information you want to gather (enter the number):${RESET}"
    echo "1) Operating System"
    echo "2) CPU"
    echo "3) Memory"
    echo "4) Disk Usage"
    echo "5) Uptime"
    echo "6) All"

    read -p "Enter your choice: " choice

    case $choice in
        1)
            get_os_info
            ;;
        2)
            get_cpu_info
            ;;
        3)
            get_memory_info
            ;;
        4)
            get_disk_info
            ;;
        5)
            get_uptime_info
            ;;
        6)
            gather_system_info
            ;;
        *)
            echo -e "${RED}Invalid choice! Please select a valid option.${RESET}"
            ;;
    esac
}

# Ask the user if they want a full report or selective information
read -p "Do you want a full system report or selective info? (full/selective): " report_choice

if [[ $report_choice == "full" ]]; then
    gather_system_info
elif [[ $report_choice == "selective" ]]; then
    selective_gather
else
    echo -e "${RED}Invalid choice. Exiting...${RESET}"
    exit 1
fi

