#!/bin/bash

# Path to scripts
MONITOR_SCRIPT="/path/to/monitor.sh"
WEEKLY_REPORT_SCRIPT="/path/to/send_weekly_report.sh"
CRITICAL_CHECK_SCRIPT="/path/to/check_critical_conditions.sh"

# Add cron job for monitor.sh (every hour)
(crontab -l 2>/dev/null; echo "0 * * * * $MONITOR_SCRIPT") | crontab -

# Add cron job for weekly report (every Monday at 9 AM)
(crontab -l 2>/dev/null; echo "0 9 * * 1 $WEEKLY_REPORT_SCRIPT") | crontab -

# Add cron job for critical condition check (every 15 minutes)
(crontab -l 2>/dev/null; echo "*/15 * * * * $CRITICAL_CHECK_SCRIPT") | crontab -

echo "Cron jobs set up successfully."

