# Use the official Keycloak image
FROM quay.io/keycloak/keycloak:24.0.3

# Set Keycloak admin credentials (feel free to change)
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# Expose port 8080 so Render knows where the app runs
EXPOSE 8080

# Start Keycloak in development mode
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
