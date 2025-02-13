#!/bin/bash

# Function to add a user
add_user() {
    local username="$1"
    
    # Check if the user already exists
    if id "$username" &>/dev/null; then
        echo "User $username already exists!"
    else
        sudo useradd -m "$username" && echo "User $username added/created successfully" || echo "Failed to create user $username"
    fi
}

# Function to delete a user
delete_user() {
    local username="$1"
    
    # Check if the user exists
    if id "$username" &>/dev/null; then
        sudo userdel -r "$username" && echo "User $username deleted successfully" || echo "Failed to delete user $username"
    else
        echo "User $username doesn't exist."
    fi
}

# Function to list all users
list_users() {
    echo "List of users:"
    cut -d: -f1 /etc/passwd
}

# Main script logic
while true; do
    echo "Choose an option:"
    echo "Enter 1 to add a user"
    echo "Enter 2 to delete a user"
    echo "Enter 3 to list all users"
    echo "Enter 4 to exit"
    read -p "Enter your choice: " choice

    case $choice in
        1) 
            read -p "Enter username: " username
            add_user "$username"
            ;;
        2) 
            read -p "Enter username to delete: " username
            read -p "Are you sure you want to delete? Press Y to confirm or N to cancel: " decision
            if [[ "$decision" == "Y" || "$decision" == "y" ]]; then
                delete_user "$username"
            else
                echo "No action needed."
            fi
            ;;
        3) 
            list_users
            ;;
        4)
            echo "Exiting the script."
            exit 0
            ;;
        *)
            echo "Invalid input. Please choose a valid option."
            ;;
    esac
done
