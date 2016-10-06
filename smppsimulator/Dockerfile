FROM alpine

ADD SMPPSim.zip /tmp/SMPPSim.zip

RUN apk add --update openjdk8-jre unzip && \
    unzip /tmp/SMPPSim.zip -d / && \
    chmod +x /SMPPSim/*.sh && \
    echo -e "\nSYSTEM_IDS=smppuser\nPASSWORDS=smppassword" >> /SMPPSim/conf/smppsim.props && \
    rm -f /tmp/SMPPSim.zip

EXPOSE 88
EXPOSE 2775

WORKDIR /SMPPSim

ENTRYPOINT [ "/bin/sh", "startsmppsim.sh" ]
