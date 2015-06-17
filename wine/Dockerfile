FROM gliderlabs/alpine:3.1

RUN apk --update add wine && \
    ln -s /usr/bin/wine64 /usr/bin/wine

ENTRYPOINT [ "wine" ]
