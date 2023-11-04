# This script will manage a todo list.
#!/bin/bash

todo_file="todo.txt"

# Function to display the menu
display_menu() {
    echo "Todo List Manager"
    echo "1. Add a new task"
    echo "2. List all tasks"
    echo "3. Mark a task as completed"
    echo "4. Remove a task"
    echo "5. Exit"
}

# Function to add a new task
add_task() {
    echo "Enter the new task:"
    read task
    echo "$task" >> "$todo_file"
    echo "Task added."
}

# Function to list all tasks
list_tasks() {
    echo "Todo List:"
    cat -n "$todo_file"
}

# Function to mark a task as completed
mark_completed() {
    list_tasks
    echo "Enter the number of the task to mark as completed:"
    read task_number
    sed -i "${task_number}s/.*/[x] &/" "$todo_file"
    echo "Task marked as completed."
}

# Function to remove a task
remove_task() {
    list_tasks
    echo "Enter the number of the task to remove:"
    read task_number
    sed -i "${task_number}d" "$todo_file"
    echo "Task removed."
}

# Main script
echo "Welcome to the Todo List Manager!"

while true; do
    display_menu
    read -p "Enter your choice: " choice

    case $choice in
        1) add_task ;;
        2) list_tasks ;;
        3) mark_completed ;;
        4) remove_task ;;
        5) echo "Exiting the Todo List Manager. Goodbye!"; break ;;
        *) echo "Invalid choice. Please choose again." ;;
    esac

    echo
done
