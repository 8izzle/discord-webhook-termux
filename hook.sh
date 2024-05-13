#!/bin/bash

# Discord webhook URL
WEBHOOK_URL="<YOUR WEBHOOK URL HERE>"

# Function to send the POST request
post_to_discord() {
    local content="$1"
    local payload="{\"content\":\"$content\"}"
    curl -X POST -H "Content-Type: application/json" -d "$payload" "$WEBHOOK_URL"
}

# Check if content is provided as argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <content>"
    exit 1
fi

# Post content to Discord
post_to_discord "$1"
