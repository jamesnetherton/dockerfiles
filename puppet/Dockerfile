FROM jamesnetherton/ruby

RUN gem install puppet --no-rdoc --no-ri && \
    adduser -h /home/puppet -u 1000 -D puppet

USER puppet

ENTRYPOINT [ "puppet" ]

