#!/bin/bash

# Wait for Keycloak to start
echo "Waiting for Keycloak to start..."
sleep 30

# Check if port 8080 is listening
if netstat -tuln | grep -q ":8080 "; then
    echo "Port 8080 is listening"
    exit 0
else
    echo "Port 8080 is not listening"
    exit 1
fi 