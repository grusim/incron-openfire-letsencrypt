FROM bash:latest
LABEL maintainer="Cyb3rwr3ck <mgmt@cyb3rwr3ck.net>"

RUN apk update \
    && apk add incron

RUN mkdir -p /mounts/watchdirs /mounts/targetdirs /scripts && echo root > /etc/incron.allow

CMD [ "/usr/sbin/incrond", "--foreground" ]
