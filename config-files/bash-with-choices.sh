#!/bin/bash

echo "Welcome to the Bash script with choices!"

echo "Please select an option:"
echo "1. Option 1"
echo "2. Option 2"
echo "3. Option 3"
echo "4. Exit"

read choice

case $choice in
    1)
        echo "You chose Option 1"
        # Add your code for Option 1 here
        ;;
    2)
        echo "You chose Option 2"
        # Add your code for Option 2 here
        ;;
    3)
        echo "You chose Option 3"
        # Add your code for Option 3 here
        ;;
    4)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "Invalid option. Please choose a number from 1 to 4."
        ;;
esac

