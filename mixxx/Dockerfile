FROM ubuntu:latest

RUN apt-get update && \
    apt-get install software-properties-common libasound2 alsa-utils libgl1-mesa-dri libgl1-mesa-glx fglrx -y --no-install-recommends && \
    add-apt-repository ppa:mixxx/mixxxbetas && \
    apt-get update && \
    apt-get install mixxx -y && \
    apt-get clean

ENV QT_X11_NO_MITSHM 1

ENTRYPOINT [ "mixxx" ]
