FROM jamesnetherton/ruby

RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk add --no-cache --update xz cpio libffi-dev rpm@testing && \
    gem install fpm --no-rdoc --no-ri && \
    mkdir /tmp/tar && \
    cd /tmp/tar && \
    # Use GNU tar
    wget http://ftp.gnu.org/gnu/tar/tar-latest.tar.gz && \
    tar xvfz tar-latest.tar.gz && \
    cd tar* && \
    FORCE_UNSAFE_CONFIGURE=1 ./configure && \
    make && \
    make install && \
    mv /usr/local/bin/tar /bin/tar && \
    rm -rf /tmp/tar

ENTRYPOINT [ "fpm" ]
