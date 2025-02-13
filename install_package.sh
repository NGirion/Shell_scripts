#!/bin/bash

# Function to check if a package is installed
is_package_installed() {
    package_name=$1
    if rpm -q "$package_name" &>/dev/null; then
        return 0  # Package is installed
    else
        return 1  # Package is not installed
    fi
}

# Function to install a package using dnf
install_package() {
    package_name=$1
    if is_package_installed "$package_name"; then
        echo "Package '$package_name' is already installed."
    else
        echo "Installing package '$package_name'..."
        sudo dnf install -y "$package_name"
        if is_package_installed "$package_name"; then
            echo "Package '$package_name' has been successfully installed."
        else
            echo "Failed to install package '$package_name'."
        fi
    fi
}

# Main function
main() {
    if [ $# -ne 1 ]; then
        echo "Usage: $0 <package_name>"
        exit 1
    fi

    package_name=$1
    install_package "$package_name"
}

# Run the main function
main "$@"

