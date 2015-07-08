FROM gliderlabs/alpine:3.2

ENV JAVA_HOME /usr/lib/jvm/java-1.7-openjdk
ENV JBOSS_HOME /opt/wildfly
ENV LAUNCH_JBOSS_IN_BACKGROUND true
ENV WILDFLY_VERSION_MAJOR 9
ENV WILDFLY_VERSION_MINOR 0
ENV WILDFLY_VERSION_PATCH 0
ENV WILDFLY_VERSION_NAME Final
ENV WILDFLY_VERSION wildfly-${WILDFLY_VERSION_MAJOR}.${WILDFLY_VERSION_MINOR}.${WILDFLY_VERSION_PATCH}.${WILDFLY_VERSION_NAME}
ENV WILDFLY_INSTALL_ROOT /opt/${WILDFLY_VERSION}

RUN apk-install curl openjdk7-jre-base && \
    mkdir /opt && \
    curl -Lv http://download.jboss.org/wildfly/${WILDFLY_VERSION_MAJOR}.${WILDFLY_VERSION_MINOR}.${WILDFLY_VERSION_PATCH}.${WILDFLY_VERSION_NAME}/${WILDFLY_VERSION}.tar.gz \
      | gunzip -c - | tar -xf - -C /opt/ && \
    ln -s ${WILDFLY_INSTALL_ROOT} ${JBOSS_HOME} && \
    adduser -D -h /opt/wildfly -s /sbin/nologin wildfly && \
    chown -R -L wildfly:wildfly /opt/wildfly

EXPOSE 8080 9990

USER wildfly

CMD ["/opt/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
