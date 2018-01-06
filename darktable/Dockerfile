FROM ubuntu:artful

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      ca-certificates \
      curl \
      darktable \
      firefox \
      libgl1-mesa-dri \
      libgl1-mesa-glx \
      x11-xserver-utils && \
    apt-get clean && \
    useradd -d /home/darktable -m darktable

ADD ./mimeinfo.cache /usr/share/applications/mimeinfo.cache

USER darktable

ENTRYPOINT [ "darktable" ]
