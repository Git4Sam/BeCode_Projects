#!/bin/bash

# Notification Function
send_alert() {
    echo "$1" | mail -s "Critical Alert" samvavrko@gmail.com
}

# Check Disk Usage
check_disk_usage() {
    disk=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')
    if [ "$disk" -gt 80 ]; then
        send_alert "Disk usage is above 80%: ${disk}%"
    fi
}

# Check Memory Usage
check_memory_usage() {
    free_mem=$(vm_stat | grep "Pages free" | awk '{print $3}' | sed 's/\.//')
    if [ "$free_mem" -lt 10000 ]; then
        send_alert "Free memory is critically low: ${free_mem} KB"
    fi
}

# Run Checks
check_disk_usage
check_memory_usage

