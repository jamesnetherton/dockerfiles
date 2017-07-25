FROM python:2-alpine

ADD https://github.com/ondras/my-mind/archive/master.zip /tmp/my-mind.zip

RUN unzip -d / /tmp/my-mind.zip && mv /my-mind-master /my-mind

WORKDIR /my-mind

ENTRYPOINT [ "python", "-m", "SimpleHTTPServer" ]
