FROM alpine:3.2

RUN apk add --update xchat ghostscript-fonts dbus-x11 && \
    adduser -h /home/xchat -u 1000 -D xchat

USER xchat

ENTRYPOINT [ "xchat" ]

CMD [ "-d", "/home/xchat/config" ]
