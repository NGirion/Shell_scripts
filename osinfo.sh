#!/bin/bash

# Function to display hostname
show_hostname() {
  echo "Hostname: $(hostname)"
}

# Function to display operating system information
show_os_info() {
  echo "Operating System: $(uname -s)"
  echo "OS Version: $(uname -r)"
  echo "Architecture: $(uname -m)"
}

# Function to display CPU information
show_cpu_info() {
  echo "CPU Model: $(lscpu | grep 'Model name' | cut -d: -f2 | xargs)"
  echo "CPU Cores: $(nproc)"
}

# Function to display memory usage (used/total, percentage)
show_memory_info() {
  total_mem=$(free -h | grep Mem | awk '{print $2}')
  used_mem=$(free -h | grep Mem | awk '{print $3}')
  mem_percent=$(free | grep Mem | awk '{print int($3/$2 * 100)}')
  
  echo "Memory Usage: $used_mem / $total_mem ($mem_percent%)"
}

# Function to display disk usage (used/total, percentage)
show_disk_usage() {
  total_disk=$(df -h / | tail -n 1 | awk '{print $2}')
  used_disk=$(df -h / | tail -n 1 | awk '{print $3}')
  disk_percent=$(df / | tail -n 1 | awk '{print $5}' | tr -d '%')
  
  echo "Disk Usage (Root): $used_disk / $total_disk ($disk_percent%)"
}

# Function to display uptime
show_uptime() {
  uptime_info=$(uptime -p)
  echo "System Uptime: $uptime_info"
}

# Function to display number of logged-in users
show_logged_in_users() {
  users_count=$(who | wc -l)
  echo "Logged-in Users: $users_count"
}

# Function to display network interfaces
show_network_info() {
  echo "Network Interfaces:"
  ip -br addr show
}

# Function to display all system info
display_system_info() {
  show_hostname
  show_os_info
  show_cpu_info
  show_memory_info
  show_disk_usage
  show_uptime
  show_logged_in_users
  show_network_info
}

# Call the function to display system info
display_system_info

