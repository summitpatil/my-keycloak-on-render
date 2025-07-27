FROM quay.io/keycloak/keycloak:24.0.3

ENV KEYCLOAK_ADMIN=ADMIN
ENV KEYCLOAK_ADMIN_PASSWORD=ADMIN

EXPOSE 8080

CMD [ "start-dev" ]

ENTRYPOINT [ "/opt/keycloak/bin/kc.sh" ]
