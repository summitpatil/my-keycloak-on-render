FROM quay.io/keycloak/keycloak:24.0.3

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

EXPOSE 8080

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
