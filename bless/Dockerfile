FROM debian:jessie

RUN apt-get update && \
    apt-get install --no-install-recommends -y bless && \
    apt-get clean

ENTRYPOINT [ "bless" ]

