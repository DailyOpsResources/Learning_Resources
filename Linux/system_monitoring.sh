#!/bin/bash

# System Monitoring Script
# Please remember to review and customize the script according to your specific requirements before using it in a production environment.


# Function to monitor CPU usage
monitor_cpu() {
    echo "CPU Usage:"
    top -bn1 | grep '%Cpu' | sed 's/,/ /g' | awk '{ printf("User: %s, System: %s\n", $2, $4) }'
}

# Function to monitor memory usage
monitor_memory() {
    echo "Memory Usage:"
    free -m | grep Mem | awk '{ printf("Total: %s MB, Used: %s MB, Free: %s MB\n", $2, $3, $4) }'
}

# Function to monitor disk space
monitor_disk() {
    echo "Disk Space Usage:"
    df -h | awk '{ printf("%s: Used: %s, Free: %s\n", $1, $3, $4) }'
}

# Main script
while true; do
    echo "System Monitoring Script"
    echo "1. Monitor CPU"
    echo "2. Monitor Memory"
    echo "3. Monitor Disk Space"
    echo "0. Exit"
    echo

    read -p "Enter your choice: " choice

    case $choice in
        1)
            monitor_cpu
            ;;
        2)
            monitor_memory
            ;;
        3)
            monitor_disk
            ;;
        0)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice."
            ;;
    esac

    echo
done
