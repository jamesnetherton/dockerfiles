FROM jamesnetherton/ruby

RUN apk add --update libffi-dev && \
    gem install fpm --no-rdoc --no-ri


ENTRYPOINT [ "fpm" ]

