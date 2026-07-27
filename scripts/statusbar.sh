#!/bin/sh
while true; do
    DATE=$(date "+%a %b %d")
    TIME=$(date "+%I:%M %p")
    BATT=$(acpiconf -i 0 | awk -F: '/Remaining capacity/ {gsub(/%/,"",$2); print $2}' | tr -d ' ')

    echo "-/ $DATE / $TIME /- ${BATT}% Charged    "
    sleep 30
done
