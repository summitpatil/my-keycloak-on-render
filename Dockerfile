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

# Copy startup script to a writable location
COPY start.sh /tmp/start.sh
RUN chmod +x /tmp/start.sh

# Required: Expose the port explicitly for Render to detect
EXPOSE 8080

# Use the startup script
CMD ["/tmp/start.sh"]
