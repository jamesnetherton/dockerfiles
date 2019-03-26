FROM fedora:29

ENV OPENBVE_VERSION=1.5.4.1

RUN dnf install -y /usr/bin/mono alsa-lib mesa-dri-drivers openal unzip && \
    curl -L https://vps.bvecornwall.co.uk/OpenBVE/Stable/openBVE-${OPENBVE_VERSION}.zip > openBVE-${OPENBVE_VERSION}.zip && \
    mkdir /openbve && \ 
    unzip openBVE-${OPENBVE_VERSION}.zip -d /openbve && \
    rm -f openBVE-${OPENBVE_VERSION}.zip && \
    useradd -m openbve

USER openbve

ENTRYPOINT [ "mono", "/openbve/OpenBve.exe" ]
