FROM ubuntu:latest

COPY N1.deb /tmp/n1.deb

RUN apt-get update && \
    apt-get install git \
                    curl \
                    ca-certificates \
                    libgtk2.0-0 \
                    libxtst6 \
                    libnss3 \
                    libgconf-2-4 \
                    libasound2 \
                    fakeroot \
                    gconf2 \
                    gconf-service \
                    libcap2 \
                    libnotify4 \
                    libxtst6 \
                    libnss3 \
                    gvfs-bin \
                    xdg-utils -y --no-install-recommends && \
    apt-get clean && \
    dpkg -i /tmp/n1.deb && \
    rm -f /tmp/n1.deb && \
    useradd -d /home/n1 -m n1

USER n1

CMD ["/usr/share/nylas/nylas","-f"]
