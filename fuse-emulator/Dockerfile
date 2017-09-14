FROM debian:stretch

RUN echo "deb http://ftp.uk.debian.org/debian stretch non-free" >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get install fuse-emulator-gtk spectrum-roms -y && \
    apt-get clean

CMD [ "fuse" ]
