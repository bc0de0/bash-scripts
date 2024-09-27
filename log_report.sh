#!/bin/bash

# Function to display usage message
usage() {
    echo "Usage: $0 <log_file>"
    exit 1
}

# Check if an argument (log file) is provided
if [ $# -ne 1 ]; then
    echo "Error: No log file specified."
    usage
fi

log_file="$1"
error_log="error_report.txt"

# Check if the specified file exists and is a regular file
if [ ! -f "$log_file" ]; then
    echo "Error: Log file '$log_file' not found or is not a regular file."
    exit 1
fi

# Check if the log file is readable
if [ ! -r "$log_file" ]; then
    echo "Error: Log file '$log_file' is not readable."
    exit 1
fi

# Extract ERROR lines and save them to error_report.txt
grep "ERROR" "$log_file" > "$error_log"

# Check if grep found any errors
if [ $? -ne 0 ]; then
    echo "No ERROR entries found in the log file."
    exit 0
fi

# Count the number of errors found
error_count=$(wc -l < "$error_log")

echo "Total errors found: $error_count"
echo "Error report saved to $error_log"
