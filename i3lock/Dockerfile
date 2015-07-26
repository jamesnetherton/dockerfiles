FROM ubuntu:vivid

RUN apt-get update && \
    apt-get install -y git \
                    libpam0g-dev \
                    libcairo2-dev \
                    libxcb* \
                    libxkbcommon* \
                    libev-dev && \
    git clone https://github.com/Lixxia/i3lock.git && \
    cd i3lock && \
    make 
#apt-get update && apt-get install pkg-config libxcd libxcd-util libpam-dev libcairo-dev libxcd-xinerama libev libx11-dev libx11-xcb-dev libxkbfile-dev libxkbcommon libxkbcommon-x11
