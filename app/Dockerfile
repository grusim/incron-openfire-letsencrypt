FROM bash:latest
LABEL maintainer="Cyb3rwr3ck <mgmt@cyb3rwr3ck.net>"

RUN apk update \
    && apk add incron \
    && apk add sudo

RUN mkdir -p /mounts/watchdirs /mounts/targetdirs /scripts /usr/share/incron

#we copy the scripts to the container instead of mounting them to make it unmodfiable after build time
COPY entrypoint.sh /sbin/entrypoint.sh
COPY ./scripts/* /scripts/
RUN chown -R root:root /scripts && chmod -R 755 /scripts

RUN chmod 755 /sbin/entrypoint.sh
ENTRYPOINT ["/sbin/entrypoint.sh"]
CMD [ "/usr/sbin/incrond", "--foreground" ]
