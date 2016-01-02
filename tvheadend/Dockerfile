FROM resin/rpi-raspbian

ENV VERSION_TAG v4.0.8
ENV CC=gcc-4.7

RUN apt-get update && \
    apt-get install python gettext libtext-iconv-perl ca-certificates git libssl-dev pkg-config build-essential dvb-apps gcc-4.7 && \
    apt-get clean && \
    git clone https://github.com/tvheadend/tvheadend.git && \
    cd tvheadend && \
    git checkout ${VERSION_TAG} && \
    ./configure; make; make install && \
    rm -rf ~/tvheadend

EXPOSE 9981 9982
ENTRYPOINT ["tvheadend"]
CMD ["-C", "-d"]
