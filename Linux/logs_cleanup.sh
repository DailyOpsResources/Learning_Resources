#!/bin/bash
#
# Log Cleanup Script
#
# This script deletes old log files from the specified directory.
# It searches for log files with the extension "*.log" and removes
# files that are older than a certain number of days.
#
# Please remember to review and customize the script according to your
# specific requirements before using it in a production environment.
#
# You can schedule to run daily using the cron utility on your Linux system.

LOG_DIR="/var/log/"
DAYS_TO_KEEP=7

find $LOG_DIR -type f -name "*.log" -mtime +$DAYS_TO_KEEP -exec rm -f {} \;

echo "Old log files deleted successfully."
