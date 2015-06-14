FROM ubuntu:vivid

RUN apt-get update && \
    apt-get install software-properties-common -y && \
    add-apt-repository ppa:dhor/myway && \
    apt-get update && \
    apt-get install rawtherapee -y && \
    apt-get clean && \
    useradd -d /home/rawtherapee -m rawtherapee && \
    mkdir -p /home/rawtherapee/.local/share

USER rawtherapee

ENTRYPOINT [ "rawtherapee" ]
