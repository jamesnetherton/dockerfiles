FROM alpine

ENV CLOUDSDK_CORE_DISABLE_PROMPTS 1

WORKDIR /

RUN apk add --no-cache --update bash curl python2 openjdk8-jre && \ 
    curl -L https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-168.0.0-linux-x86_64.tar.gz | tar xvz && \
    /google-cloud-sdk/install.sh && \
    /google-cloud-sdk/bin/gcloud config set disable_usage_reporting true && \
    /google-cloud-sdk/bin/gcloud components install -q pubsub-emulator beta && \
    rm -rf /google-cloud-sdk/.install/.backup /tmp/tmp*

EXPOSE 8590

ENTRYPOINT [ "/google-cloud-sdk/bin/gcloud", "beta", "emulators", "pubsub", "start" ]
