#!/bin/bash

# File that stores the restart count
RESTART_COUNT_FILE="/var/log/dummy_restart_count.log"

# Check if the file exists, if not, create it with a value of 0
if [ ! -f "$RESTART_COUNT_FILE" ]; then
    echo 0 > "$RESTART_COUNT_FILE"
fi

# Read the restart count from the file
RESTART_COUNT=$(cat "$RESTART_COUNT_FILE")

# Increment the restart count by 1
RESTART_COUNT=$((RESTART_COUNT + 1))

# Write the updated value back to the file
echo "$RESTART_COUNT" > "$RESTART_COUNT_FILE"

# Log the restart count
echo "Service restarted $RESTART_COUNT times" >> /var/log/dummy.log

# Main loop for the service
while true; do
    echo "Dummy service is running .." >> /var/log/dummy.log
    sleep 10
done
