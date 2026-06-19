#!/bin/bash

if [ "$#" -ne 2 ]; then
    # send the usage hint to stderr so it doesn't mix with normal output
    echo "Usage: $0 <name> <domain>" >&2
    # leave with a non-zero code to flag the bad call
    exit 1
fi

# keep the first argument as the friendly name
name="$1"

# keep the second argument as the domain I'm going to ping
domain="$2"

# send a single ping and dump its chatter so I only keep the exit status
if ping -c 1 "$domain" > /dev/null 2>&1; then
    # exit code 0 means the host answered, so I call it a success
    result="success"
else
    # anything else means the ping never got through
    result="failure"
fi

# grab a readable timestamp for the log row
timestamp=$(date "+%Y-%m-%d %H:%M:%S")

# tack everything onto the CSV as one comma-separated line
echo "$name,$domain,$result,$timestamp" >> results.csv

# tell whoever ran it where the row landed
echo "Done. Row added to results.csv"

sleep 1000 