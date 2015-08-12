FROM jamesnetherton/java

ENV GROOVY_VERSION 2.4.4
ENV GROOVY_HOME /usr/share/groovy-${GROOVY_VERSION}
ENV PATH ${GROOVY_HOME}/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN apk --update add curl unzip && \
    curl -L http://dl.bintray.com/groovy/maven/apache-groovy-binary-${GROOVY_VERSION}.zip > /usr/share/groovy.zip && \
    cd /usr/share && \
    unzip groovy.zip && \
    rm -f groovy.zip && \
    sed -i 's/set \-\- \"\${args\[\@\]}\"/true/g' ${GROOVY_HOME}/bin/startGroovy

ENTRYPOINT [ "groovy" ]
