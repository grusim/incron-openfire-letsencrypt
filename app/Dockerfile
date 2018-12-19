FROM bash:latest
LABEL maintainer="Cyb3rwr3ck <mgmt@cyb3rwr3ck.net>"

RUN apk update \
    && apk add incron \
    && apk add sudo

RUN mkdir -p /mounts/watchdirs /mounts/targetdirs /scripts

COPY entrypoint.sh /sbin/entrypoint.sh
COPY ./scripts/install-openfire-certs.sh /scripts
RUN chmod 755 /sbin/entrypoint.sh

ENTRYPOINT ["/sbin/entrypoint.sh"]
CMD [ "sudo", "-u", "icuser", "/usr/sbin/incrond", "--foreground" ]
