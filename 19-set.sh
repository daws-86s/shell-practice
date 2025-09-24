#!/bin/bash

set -e 

error(){
    echo "There is an error"
}

trap error ERR

echo "Hello.."
echo "Before error.."
ccaffjl;dnf # here shell understands there is an error and signal is ERR
echo "After error"