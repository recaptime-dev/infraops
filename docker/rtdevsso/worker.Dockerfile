FROM ghcr.io/goauthentik/server:latest

ARG AUTHENTIK_REDIS__HOST
ARG AUTHENTIK_REDIS__PORT
ARG AUTHENTIK_REDIS__PASSWORD
ARG AUTHENTIK_POSTGRESQL__HOST
ARG AUTHENTIK_POSTGRESQL__USER
ARG AUTHENTIK_POSTGRESQL__NAME
ARG AUTHENTIK_POSTGRESQL__PASSWORD
ARG AUTHENTIK_POSTGRESQL__PORT
ARG AUTHENTIK_SECRET_KEY
ARG PORT

ENV AUTHENTIK_REDIS__HOST=${AUTHENTIK_REDIS__HOST}
ENV AUTHENTIK_REDIS__PORT=${AUTHENTIK_REDIS__PORT}
ENV AUTHENTIK_REDIS__PASSWORD=${AUTHENTIK_REDIS__PASSWORD}
ENV AUTHENTIK_POSTGRESQL__HOST=${AUTHENTIK_POSTGRESQL__HOST}
ENV AUTHENTIK_POSTGRESQL__USER=${AUTHENTIK_POSTGRESQL__USER}
ENV AUTHENTIK_POSTGRESQL__NAME=${AUTHENTIK_POSTGRESQL__NAME}
ENV AUTHENTIK_POSTGRESQL__PASSWORD=${AUTHENTIK_POSTGRESQL__PASSWORD}
ENV AUTHENTIK_POSTGRESQL__PORT=${AUTHENTIK_POSTGRESQL__PORT}
ENV AUTHENTIK_SECRET_KEY=${AUTHENTIK_SECRET_KEY}
ENV PORT=${PORT}

CMD ["worker"]