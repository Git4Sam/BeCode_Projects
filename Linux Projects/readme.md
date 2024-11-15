# System Monitoring Project

This project is a custom-built system monitoring solution using Bash scripts. It logs system metrics, checks for critical conditions, and sends email notifications and weekly reports. This project is designed for Unix-based systems like macOS and Linux.

## Project Structure
- **monitor.sh**: Logs key system metrics such as CPU usage, memory usage, disk usage, and system uptime.
- **check_critical_conditions.sh**: Monitors for critical conditions (e.g., high disk usage, low memory) and sends alerts via email.
- **send_weekly_report.sh**: Sends a weekly report email with the contents of the system log file.
- **cron_jobs.sh**: Sets up cron jobs to automate the execution of the above scripts at specified intervals.

## Requirements
1. Unix-based operating system (macOS or Linux).
2. `mail` utility installed for sending email notifications (for email alerts and reports).

## Setup Instructions

### 1. Clone the Repository
First, clone the repository to your local machine:
```bash
git clone https://github.com/your-username/system-monitor.git
cd system-monitor

