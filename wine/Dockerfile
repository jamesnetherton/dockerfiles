FROM debian:jessie

RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install --no-install-recommends -y \
      wine \
      wine32 \
      cabextract \
      zenity \
      libgl1-mesa-dri \
      libgl1-mesa-glx \
      libasound2 \
      alsa-utils \
      ca-certificates \
      curl && \
    apt-get clean && \
    curl  https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks > /usr/local/bin/winetricks && \
    chmod +x /usr/local/bin/winetricks

ENTRYPOINT [ "wine" ]
