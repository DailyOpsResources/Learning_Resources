#!/bin/bash

# Daily Admin Duties Script

# Please note that this is a basic script and may need modifications 
# based on your specific requirements.
# Please remember to review and customize the script according to your
# specific requirements before using it in a production environment.

# Log file to store script output
LOG_FILE="/var/log/daily_admin.log"

# Function to log script output to the log file
log() {
    echo "$(date "+%Y-%m-%d %H:%M:%S") $1" >> "$LOG_FILE"
}

# Function to display menu and get user's choice
show_menu() {
    echo "Daily Admin Duties Menu:"
    echo "1. Display system information"
    echo "2. Create users"
    echo "3. Check disk space usage"
    echo "4. Check memory usage"
    echo "5. Perform system updates"
    echo "6. List running processes"
    echo "7. Monitor network connections"
    echo "8. Cleanup temporary files"
    echo "0. Exit"
    echo
    read -p "Enter your choice: " choice
}

# Function to perform system information task
perform_system_info() {
    log "System Information:"
    uname -a | tee /dev/tty >> "$LOG_FILE"
    echo >> "$LOG_FILE"
}

# Function to create users
perform_create_users() {
    log "User Creation:"
    read -p "Enter username: " username
    read -s -p "Enter password: " password
    echo
    echo "Creating user $username..."
    # Replace the placeholders with your user creation commands
    # Example: useradd -m username
    useradd -m "$username"
    echo "$username:$password" | chpasswd
    echo "User $username created." | tee /dev/tty >> "$LOG_FILE"
    echo >> "$LOG_FILE"
}

# Function to perform disk space check task
perform_disk_check() {
    log "Disk Space Check:"
    df -h | tee /dev/tty >> "$LOG_FILE"
    echo >> "$LOG_FILE"
}

# Function to perform memory check task
perform_memory_check() {
    log "Memory Check:"
    free -m | tee /dev/tty >> "$LOG_FILE"
    echo >> "$LOG_FILE"
}

# Function to perform system update task
perform_system_update() {
    log "System Update:"
    # Replace the placeholders with your system update commands
    # Example: apt update && apt upgrade -y
    apt update && apt upgrade -y | tee /dev/tty >> "$LOG_FILE"
    echo >> "$LOG_FILE"
}

# Function to perform running processes task
perform_running_processes() {
    log "Running Processes:"
    ps aux | tee /dev/tty >> "$LOG_FILE"
    echo >> "$LOG_FILE"
}

# Function to perform network connections task
perform_network_connections() {
    log "Network Connections:"
    netstat -tuln | tee /dev/tty >> "$LOG_FILE"
    echo >> "$LOG_FILE"
}

# Function to perform cleanup task
perform_cleanup() {
    log "Cleanup Temporary Files:"
    # Replace the placeholders with your cleanup command
    # Example: rm -rf /tmp/*
    rm -rf /tmp/* | tee /dev/tty >> "$LOG_FILE"
    echo >> "$LOG_FILE"
}

# Main script
while true; do
    show_menu

    case $choice in
        1)
            perform_system_info
            ;;
        2)
            perform_create_users
            ;;
        3)
            perform_disk_check
            ;;
        4)
            perform_memory_check
            ;;
        5)
            perform_system_update
            ;;
        6)
            perform_running_processes
            ;;
        7)
            perform_network_connections
            ;;
        8)
            perform_cleanup
            ;;
        0)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
done
