#!/bin/bash

# CPU Usage
get_cpu_usage() {
    top -l 1 | grep "CPU usage" | awk '{print $3, $5, $7}'
}

# Memory Usage
get_memory_usage() {
    vm_stat | grep "Pages free" | awk '{print $3}' | sed 's/\.//'
}

# Disk Usage
get_disk_usage() {
    df -h / | awk 'NR==2 {print $5}'
}

# System Uptime
get_uptime() {
    uptime | awk -F', ' '{print $1}'
}

# Log Metrics
log_metrics() {
    cpu=$(get_cpu_usage)
    memory=$(get_memory_usage)
    disk=$(get_disk_usage)
    uptime=$(get_uptime)

    echo "$(date), CPU: $cpu, Memory: $memory KB free, Disk: $disk, Uptime: $uptime" >> system_metrics.log
}

# Run the function to log metrics
log_metrics

