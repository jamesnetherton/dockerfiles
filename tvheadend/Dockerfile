FROM resin/rpi-raspbian

ENV TVHEADEND_VERSION 4.2.8

RUN apt-get update && \
    apt-get install -y \
      debhelper \
      build-essential:native \
      cmake \
      dvb-apps \
      git \
      libavahi-client-dev \
      liburiparser-dev \
      libssl-dev \
      python \
      zlib1g-dev \
      wget && \
    apt-get clean && \
    git clone -b v${TVHEADEND_VERSION} https://github.com/tvheadend/tvheadend.git && \
    cd tvheadend && \
    AUTOBUILD_CONFIGURE_EXTRA=--disable-bintray_cache\ --disable-hdhomerun_static\ --disable-ffmpeg_static\ --disable-dvbscan ./Autobuild.sh && \
    dpkg -i ../tvheadend_${TVHEADEND_VERSION}_armhf.deb && \
    rm -rf ~/*.deb ~/tvheadend

EXPOSE 9981 9982
ENTRYPOINT ["tvheadend"]
CMD ["-C", "-d"]
