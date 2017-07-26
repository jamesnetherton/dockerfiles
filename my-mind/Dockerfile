FROM python:2-alpine

ADD https://github.com/ondras/my-mind/archive/master.zip /tmp/my-mind.zip

RUN unzip -d / /tmp/my-mind.zip && \
    mv /my-mind-master /my-mind && \
    sed -i '/(function/,+5 s/^/\/\//' /my-mind/index.html

WORKDIR /my-mind

ENTRYPOINT [ "python", "-m", "SimpleHTTPServer" ]
