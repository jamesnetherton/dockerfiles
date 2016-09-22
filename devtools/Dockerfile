FROM alpine

ENV MAVEN_VERSION=3.3.9 \
    JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/ \
    MAVEN_HOME=/usr/share/apache-maven-3.3.9

RUN apk update && \
    apk add curl wget git openjdk8 && \
    curl https://archive.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz | tar -xzf - -C /usr/share && \
    ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn && \
    ln -s ${JAVA_HOME}/bin/javac /usr/bin/javac

CMD [ "sh" ]
