FROM jamesnetherton/ruby

RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk add --update libffi-dev rpm@testing && \
    gem install fpm --no-rdoc --no-ri

ENTRYPOINT [ "fpm" ]

