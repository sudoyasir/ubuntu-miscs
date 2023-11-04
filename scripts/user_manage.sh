# This script will add, remove, or modify a user.
#!/bin/bash
action=$1
username=$2

if [ "$action" = "add" ]; then
    sudo useradd -m $username
    sudo passwd $username
    echo "User $username added."
elif [ "$action" = "remove" ]; then
    sudo userdel -r $username
    echo "User $username removed."
elif [ "$action" = "modify" ]; then
    sudo usermod -aG sudo $username
    echo "User $username modified."
else
    echo "Invalid action. Usage: user_management.sh add|remove|modify username"
fi
