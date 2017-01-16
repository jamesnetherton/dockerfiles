FROM alpine

RUN apk add --no-cache --update pidgin ghostscript-fonts && \
    adduser -h /home/pidgin -u 1000 -D pidgin

USER pidgin

ENTRYPOINT [ "pidgin" ]

CMD [ "-c", "/home/pidgin/config" ]
