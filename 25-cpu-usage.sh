#!/bin/bash

DISK_USAGE=$(df -hT | grep -v Filesystem)
DISK_THRESHOLD=2 # in project we keep it as 75

while IFS= read -r line
do
    USAGE=$(echo $line | awk '{print $6}' | cut -d "%" -f1)
    PARTITION=$(echo $line | awk '{print $7}')
    if [ $USAGE -ge $DISK_THRESHOLD ]; then
        echo "High Usage on $PARTITION: $USAGE"
    fi
done <<< $DISK_USAGE