#!/bin/bash

# Path to the log file
LOG_FILE="system_metrics.log"

# Email recipient
RECIPIENT="samvavrko@gmail.com"

# Check if the log file exists
if [[ ! -f "$LOG_FILE" ]]; then
    echo "Log file not found. Weekly report cannot be sent."
    exit 1
fi

# Send email with the log file as the body
mail -s "Weekly System Report" "$RECIPIENT" < "$LOG_FILE"

echo "Weekly report sent to $RECIPIENT."

