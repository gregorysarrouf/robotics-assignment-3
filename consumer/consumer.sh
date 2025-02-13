#!/bin/sh

PORT=5000
LOG_FILE="/data/$(date +%Y%m%d).log"

touch "$LOG_FILE"

# Receive id from producer and save to log file,
# which is connected to a volume
nc -lp $PORT | while read -r line; do
    echo "$(date) - $line" >>"$LOG_FILE"
done
