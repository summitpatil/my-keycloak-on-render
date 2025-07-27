FROM quay.io/keycloak/keycloak:24.0.3

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# Enable development profile
ENV KC_DB=dev-file

# Set the port Keycloak will listen on
ENV KC_HTTP_PORT=8080

# Required: Expose the port explicitly for Render to detect
EXPOSE 8080

# Use this as the default CMD
CMD ["start-dev", "--http-port=8080", "--hostname-strict=false", "--hostname-strict-https=false"]
