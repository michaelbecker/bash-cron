#!/bin/bash


run_periodic()
{
    while true; do
        NOW=$(date +%s)
        #RUN_TIME=$(date --date="03:00 this Sun" +%s)
        RUN_TIME=$(date --date="now + min" +%s)
        SLEEP_TIME=$((RUN_TIME - NOW))
        echo "Will sleep for $SLEEP_TIME"
        sleep $SLEEP_TIME
        echo "I awake! at $(date)"
        #sleep 1
    done
}


run_periodic

