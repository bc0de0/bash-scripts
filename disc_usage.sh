#!/bin/bash

# Check if directory path is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

directory="$1"

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "Directory not found: $directory"
    exit 1
fi

# Display disk usage report
du -sh "$directory"/* | sort -rh > disk_usage_report.txt
echo "Disk usage report saved to disk_usage_report.txt"
