#!/bin/bash

# Start Keycloak in the background
/opt/keycloak/bin/kc.sh start-dev \
  --http-port=8080 \
  --hostname=0.0.0.0 \
  --hostname-strict=false \
  --hostname-strict-https=false \
  --log-level=INFO &

# Wait a moment for Keycloak to start
sleep 10

# Check if the port is listening
echo "Checking if port 8080 is listening..."
netstat -tuln | grep :8080 || echo "Port 8080 not found in netstat"

# Keep the container running
wait 