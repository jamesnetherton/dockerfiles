FROM alpine:latest

RUN apk add --update pidgin ghostscript-fonts && \
    adduser -h /home/pidgin -u 1000 -D pidgin

USER pidgin

ENTRYPOINT [ "pidgin" ]

CMD [ "-c", "/home/pidgin/config" ]
