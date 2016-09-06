FROM debian:jessie

ENV COMPOSE_VERSION 1.2.0

RUN apt-get update && \
    apt-get install curl -y && \
    apt-get clean && \
    curl -L https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

ENTRYPOINT ["docker-compose"]
