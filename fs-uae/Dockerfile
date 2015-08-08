FROM debian:jessie

RUN echo "deb http://download.opensuse.org/repositories/home:/FrodeSolheim:/stable/Debian_8.0/ /" > /etc/apt/sources.list.d/FrodeSolheim-stable.list && \
    apt-get update && \
    apt-get install -y --force-yes --no-install-recommends \
      fs-uae \
      fs-uae-launcher \
      fs-uae-arcade \
      libasound2 \
      libgl1-mesa-dri \
      libgl1-mesa-glx \
      x11-xserver-utils \
      alsa-utils && \
    apt-get clean && \
    useradd -d /home/fsuae -m fsuae && \
    usermod -a -G audio fsuae

USER fsuae

ENTRYPOINT [ "fs-uae", "--base-dir=/home/fsuae/config" ]
