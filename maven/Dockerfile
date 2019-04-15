FROM jamesnetherton/java

ENV MAVEN_VERSION 3.6.1
ENV PATH /usr/share/apache-maven-${MAVEN_VERSION}/bin:${PATH}

RUN apk --update add curl && \
    curl http://apache.mirror.anlx.net/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz > /usr/share/maven.tar.gz && \
    cd /usr/share && \
    tar xvzf maven.tar.gz && \
    rm -f maven.tar.gz

ENTRYPOINT [ "mvn" ]
