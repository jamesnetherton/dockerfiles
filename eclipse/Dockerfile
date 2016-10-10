FROM fedora:24

RUN dnf install eclipse -y && \
    dnf clean all && \
    useradd eclipse 

USER eclipse

ENTRYPOINT [ "eclipse" ]

