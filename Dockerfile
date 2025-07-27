FROM quay.io/keycloak/keycloak:24.0.3

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# Enable development profile
ENV KC_DB=dev-file

# Set the port Keycloak will listen on
ENV KC_HTTP_PORT=8080

# Force Keycloak to bind to all interfaces
ENV KC_HOSTNAME=0.0.0.0
ENV KC_HOSTNAME_PORT=8080

# Required: Expose the port explicitly for Render to detect
EXPOSE 8080

# Use direct Keycloak startup command
CMD ["start-dev", "--http-port=8080", "--hostname=0.0.0.0", "--hostname-strict=false", "--hostname-strict-https=false", "--log-level=INFO"]
