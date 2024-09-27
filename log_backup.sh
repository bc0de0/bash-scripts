#!/bin/bash

# Define source and backup directories
log_dir="/var/log"
backup_dir="/backup/logs"
timestamp=$(date +"%Y%m%d_%H%M%S")

# Check if backup directory exists, if not create it
if [ ! -d "$backup_dir" ]; then
    mkdir -p "$backup_dir"
fi

# Archive and compress log files
tar -czf "$backup_dir/log_backup_$timestamp.tar.gz" -C "$log_dir" .

echo "Log backup completed: log_backup_$timestamp.tar.gz"
