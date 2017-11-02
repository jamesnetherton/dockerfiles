FROM ibmjava:8-sdk

ENV MAVEN_VERSION 3.5.2
ENV PATH /usr/share/apache-maven-${MAVEN_VERSION}/bin:${PATH}

RUN wget -O /usr/share/maven.tar.gz http://apache.mirror.anlx.net/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz && \
    cd /usr/share && \
    tar xvzf maven.tar.gz && \
    rm -f maven.tar.gz
