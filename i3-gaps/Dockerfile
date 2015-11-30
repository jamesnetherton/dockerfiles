FROM fedora:23

RUN dnf install -y libxcb-devel \
                   xcb-util-keysyms-devel \
                   xcb-util-devel \
                   xcb-util-wm-devel \
                   yajl-devel \
                   libXrandr-devel \
                   startup-notification-devel \
                   libev-devel \
                   xcb-util-cursor-devel \
                   libXinerama-devel \
                   libxkbcommon-devel \
                   libxkbcommon-x11-devel \
                   pcre-devel \
                   pango-devel \
                   pkgconfig \
                   perl-Data-Dumper \
                   git \
                   gcc \
                   make \
                   which && \
    git clone https://www.github.com/Airblader/i3 i3-gaps && \
    cd i3-gaps && \
    git checkout gaps && \
    git pull && \
    make && \
    make install
