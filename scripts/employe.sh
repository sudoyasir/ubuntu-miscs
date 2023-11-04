# This is a script that will manage employees. It will allow you to add new employees, list all employees, and search for an employee by name or ID.
#!/bin/bash

employee_file="employees.txt"

# Function to display the menu
display_menu() {
    echo "Employee Management System"
    echo "1. Add a new employee"
    echo "2. List all employees"
    echo "3. Search for an employee by name or ID"
    echo "4. Exit"
}

# Function to add a new employee
add_employee() {
    echo "Enter the employee ID:"
    read id
    echo "Enter the employee name:"
    read name
    echo "$id,$name" >> "$employee_file"
    echo "Employee added."
}

# Function to list all employees
list_employees() {
    echo "List of Employees:"
    cat "$employee_file"
}

# Function to search for an employee by name or ID
search_employee() {
    echo "Enter the employee name or ID to search:"
    read search_term
    grep -i "$search_term" "$employee_file"
}

# Main script
echo "Welcome to the Employee Management System!"

while true; do
    display_menu
    read -p "Enter your choice: " choice

    case $choice in
        1) add_employee ;;
        2) list_employees ;;
        3) search_employee ;;
        4) echo "Exiting the Employee Management System. Goodbye!"; break ;;
        *) echo "Invalid choice. Please choose again." ;;
    esac

    echo
done
