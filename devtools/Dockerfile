FROM alpine

ENV MAVEN_VERSION=3.6.1 \
    JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk \
    MAVEN_HOME=/usr/share/apache-maven-3.6.1

RUN apk update && \
    apk add --no-cache \
        curl \
        git \
        ncurses \
        nodejs \
        openjdk8 \
        shadow \
        wget \
        zsh && \
    curl https://archive.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz | tar -xzf - -C /usr/share && \
    sh -c "SHELL=/bin/sh; $(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && \
    sed -i 's/plugins=(git)/plugins=(git mvn)/g' /root/.zshrc && \
    echo "export PATH=${JAVA_HOME}/bin:${MAVEN_HOME}/bin:${PATH}" >> /root/.zshrc && \
    chsh -s /bin/zsh

CMD [ "zsh" ]
