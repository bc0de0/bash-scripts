#!/bin/bash

backup_file() {
    cp "$1" "$2"
    if [ $? -ne 0 ]; then
        echo "Error: Failed to backup $1."
        exit 1
    fi
    echo "Backup of $1 to $2 completed successfully."
}

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 source_file backup_file"
    exit 1
fi

backup_file "$1" "$2"
