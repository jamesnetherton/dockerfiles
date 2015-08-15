FROM jamesnetherton/wine

ADD install-mfc42.sh /usr/local/bin/install-mfc42

RUN apt-get update && \
    apt-get install -y unzip xvfb && \
    apt-get clean  && \
    curl http://myastroimages.com/Polar_FinderScope_by_Jason_Dale/polar204.zip > /tmp/polarfinder.zip && \
    unzip /tmp/polarfinder.zip -d /tmp && \
    mv /tmp/distribution/*.exe / && \
    mv /tmp/distribution/*.bmp / && \
    rm -rf /tmp/polarfinder.zip /tmp/distribution/ && \
    install-mfc42 && \
    apt-get remove -y --purge xvfb

CMD [ "/PolarFinder.exe" ]
