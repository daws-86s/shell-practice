#!/bin/bash

NUMBER=$1

if [ $NUMBER -lt 10 ]; then
    echo "Given number $NUMBER is less than 10"
else
    echo "Given number $NUMBER is greater than or equal to 10"
fi

# -gt
# -eq
# -ne