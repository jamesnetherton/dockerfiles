FROM debian:jessie

RUN apt-get update && \
    apt-get install -y --no-install-recommends transmission && \
    useradd transmission

USER transmission

ENTRYPOINT [ "transmission-gtk" ]
