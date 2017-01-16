FROM alpine

RUN apk add --no-cache --update xchat ghostscript-fonts dbus-x11 && \
    adduser -h /home/xchat -u 1000 -D xchat

USER xchat

ENTRYPOINT [ "xchat" ]

CMD [ "-d", "/home/xchat/config" ]
