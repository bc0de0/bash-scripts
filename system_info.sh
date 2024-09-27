#!/bin/bash

# Display system information

echo "User Information:"
echo "Username: $USER"
echo "Home Directory: $HOME"
echo "Current Directory: $PWD"
echo "Shell: $SHELL"
echo "Hostname: $HOSTNAME"

# Check if the script is being run as root
if [ "$EUID" -eq 0 ]; then
    echo "You are running this script as root."
else
    echo "You are running this script as a non-root user."
fi

# Display script name and arguments (optional)
echo "Script Name: $0"
