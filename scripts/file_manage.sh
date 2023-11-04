#!/bin/bash

# Function to create a new file
create_file() {
    echo "Enter the name of the file to create:"
    read filename
    touch "$directory/$filename"
    echo "File $filename created."
}

# Function to delete a file
delete_file() {
    echo "Enter the name of the file to delete:"
    read filename
    if [ -f "$directory/$filename" ]; then
        rm "$directory/$filename"
        echo "File $filename deleted."
    else
        echo "File $filename not found."
    fi
}

# Function to list all files in the directory
list_files() {
    echo "Files in $directory:"
    ls -l "$directory"
}

# Main script
directory="/path/to/your/directory"

echo "Welcome to the File Management System!"
echo "Choose an option:"
echo "1. Create a new file"
echo "2. Delete an existing file"
echo "3. List all files in the directory"
echo "4. Exit"

while true; do
    read -p "Enter your choice: " choice
    case $choice in
        1) create_file ;;
        2) delete_file ;;
        3) list_files ;;
        4) echo "Exiting the File Management System. Goodbye!"; break ;;
        *) echo "Invalid choice. Please choose again." ;;
    esac
done

# This script will create, delete, or list files in a directory.