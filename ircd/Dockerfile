FROM alpine

RUN apk add --no-cache --update ngircd && \
    chmod 644 /etc/ngircd/ngircd.conf && \
    sed -i -e 's/;PAM = yes/PAM = no/g' \
           -e 's/;ServerGID = 65534/ServerGID = ngircd/g' \
           -e 's/;ServerUID = 65534/ServerUID = ngircd/g' \
           -e 's/;MaxNickLength = 9/MaxNickLength = 25/g' \
           /etc/ngircd/ngircd.conf

EXPOSE 6667

ENTRYPOINT [ "ngircd", "-n" ]
