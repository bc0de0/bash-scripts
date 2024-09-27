#!/bin/bash

# Display top 5 CPU-consuming processes
echo "Top 5 CPU-consuming processes:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6

# Ask user if they want to kill any process
read -p "Enter the PID of the process to kill (or press Enter to skip): " pid

# If the user provided a PID, kill the process
if [ -n "$pid" ]; then
    kill -9 "$pid"
    echo "Process $pid killed."
else
    echo "No process killed."
fi
