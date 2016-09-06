FROM ubuntu:vivid

RUN apt-get update && \
    apt-get install -y git \
                    libpam0g-dev \
                    libcairo2-dev \
                    libxcb* \
                    libxkbcommon* \
                    libev-dev && \
    apt-get clean && \
    git clone https://github.com/Lixxia/i3lock.git && \
    cd i3lock && \
    make
