#!/bin/bash

DISK_USAGE=$(df -hT | grep -v Filesystem)

while IFS= read -r line
do
    echo "Line: $line"
done <<< $DISK_USAGE