FROM alpine

ADD SMPPSim.zip /tmp/SMPPSim.zip

RUN apk add --no-cache --update openjdk8-jre unzip && \
    unzip /tmp/SMPPSim.zip -d / && \
    chmod +x /SMPPSim/*.sh && \
    echo -e "\nSYSTEM_IDS=smppuser\nPASSWORDS=password" >> /SMPPSim/conf/smppsim.props && \
    sed -i 's/MAX_TIME_ENROUTE=10000/MAX_TIME_ENROUTE=100/g' /SMPPSim/conf/smppsim.props && \
    sed -i 's/PERCENTAGE_DELIVERED=90/PERCENTAGE_DELIVERED=100/g' /SMPPSim/conf/smppsim.props && \
    sed -i 's/PERCENTAGE_UNDELIVERABLE=6/PERCENTAGE_UNDELIVERABLE=0/g' /SMPPSim/conf/smppsim.props && \
    sed -i 's/PERCENTAGE_ACCEPTED=2/PERCENTAGE_ACCEPTED=0/g' /SMPPSim/conf/smppsim.props && \
    sed -i 's/PERCENTAGE_REJECTED=2/PERCENTAGE_REJECTED=0/g' /SMPPSim/conf/smppsim.props && \
    sed -i 's/MESSAGE_STATE_CHECK_FREQUENCY=5000/MESSAGE_STATE_CHECK_FREQUENCY=250/g' /SMPPSim/conf/smppsim.props && \
    sed -i 's/DISCARD_FROM_QUEUE_AFTER=60000/DISCARD_FROM_QUEUE_AFTER=1000/g' /SMPPSim/conf/smppsim.props && \
    rm -f /tmp/SMPPSim.zip

EXPOSE 88
EXPOSE 2775

WORKDIR /SMPPSim

ENTRYPOINT [ "/bin/sh", "startsmppsim.sh" ]
