#!/bin/bash

# Array of menu options
declare -a menu=("option 1: array.sh" "option 2: arrays.sh" "option 3: casestement.sh" "option 4: Exit")

# Display menu options 
echo "Select an option:"
select option in "${menu[@]}"; do
    case $REPLY in
        1) 
            ./array.sh
            ;;
        2)
            ./arrays.sh
            ;;
        3)
            ./casestement.sh
            ;;
        4)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done

