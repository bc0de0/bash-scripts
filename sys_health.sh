#!/bin/bash

log_file="system_health_check.log"

# System uptime
echo "System Uptime:" >> "$log_file"
uptime >> "$log_file"
echo "----------------------------" >> "$log_file"

# Memory usage
echo "Memory Usage:" >> "$log_file"
free -h >> "$log_file"
echo "----------------------------" >> "$log_file"

# Disk usage
echo "Disk Usage:" >> "$log_file"
df -h >> "$log_file"
echo "----------------------------" >> "$log_file"

# Top 5 processes by CPU usage
echo "Top 5 CPU-consuming processes:" >> "$log_file"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6 >> "$log_file"
echo "----------------------------" >> "$log_file"

echo "System health check logged to $log_file"
