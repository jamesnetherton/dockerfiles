FROM debian:jessie

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      darktable \
      libgl1-mesa-dri \
      libgl1-mesa-glx \
      x11-xserver-utils && \
    apt-get clean

ENTRYPOINT [ "darktable" ]
