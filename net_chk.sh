#!/bin/bash

log_file="network_connections.log"

# Capture active network connections using netstat
echo "Active network connections:" >> "$log_file"
netstat -tunapl >> "$log_file"
echo "Captured at: $(date)" >> "$log_file"
echo "----------------------------" >> "$log_file"

echo "Network connections logged to $log_file"
