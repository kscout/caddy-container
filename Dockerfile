FROM alpine:latest

RUN apk add curl

RUN mkdir /opt/caddy-install
WORKDIR /opt/caddy-install
RUN curl 'https://caddyserver.com/download/linux/amd64?plugins=http.prometheus&license=personal&telemetry=off' > caddy.tar.gz
RUN tar -xzf ./caddy.tar.gz
RUN rm caddy.tar.gz
RUN mv ./caddy /usr/bin

RUN mkdir /opt/caddy-container
WORKDIR /opt/caddy-container
COPY entrypoint.sh .

WORKDIR /mnt
ENTRYPOINT /opt/caddy-container/entrypoint.sh
