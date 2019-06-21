FROM alpine:latest

RUN apk add caddy

RUN mkdir /opt/caddy-container
COPY entrypoint.sh /opt/caddy-container

WORKDIR /mnt
ENTRYPOINT /opt/caddy-container/entrypoint.sh
