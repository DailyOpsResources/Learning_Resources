#!/bin/bash

# Tmux SSH Script
# This script connects to SSH sessions using tmux. 
# It reads hostnames from a file and creates separate 
# SSH windows in a tmux session for each hostname.
# Note: Ensure the file contains valid hostnames, one per line
# and tmux is installed on your system.

# Modify accordingly to ssh to a given user name. 
# Add ssh keys to clients to automate login under the given user name. 

# Check if filename argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Check if tmux is installed
if ! command -v tmux &> /dev/null; then
    echo "Error: tmux is not installed. Please install tmux and try again."
    exit 1
fi

# Read the filename argument
filename="$1"

# Function to connect to SSH session using tmux
connect_ssh() {
    session_name="ssh-session"

    # Start tmux session
    tmux new-session -d -s "$session_name"

    # Read hostnames from file and create SSH windows in tmux
    while IFS= read -r hostname; do
        if [ -n "$hostname" ]; then
            tmux new-window -t "$session_name" "ssh $hostname"
        fi
    done < "$filename"

    # Attach to the tmux session
    tmux attach-session -t "$session_name"
}

# Main script
connect_ssh
