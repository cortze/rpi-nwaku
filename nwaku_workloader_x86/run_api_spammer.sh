#!/bin/bash

# Infinite loop
while true; do
    # Loop from 4001 to 4020
    for port in {4001..4020}; do
        # Formulate the URL with the current port
        url="http://localhost:$port/relay/v1/messages/%2Fwaku%2F2%2Frs%2F2%2F0"

        # Perform the curl request with the updated URL
        curl -X POST "$url" \
         -H "content-type: application/json" \
         -d '{"payload":"dontcdasdasdare","contentTopic":"content-topic"}'

    done
done