
#!bin/bash

START_TIME=$(date +%S)

sleep 10

END_TIME=$(date +%S)

TOTAL_TIME=$((END_TIME-START_TIME))

echo "Total time to complete the task is: $TOTAL_TIME seconds"