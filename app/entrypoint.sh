#!/usr/bin/env bash

/usr/sbin/adduser -S -D -H -g "" ${INCRONUSER}
echo ${INCRONUSER} > /etc/incron.allow

#import watch files to non root incron user tab
incrontab -u ${INCRONUSER} /usr/share/incron/${OPENFIRE_CERT_SCRIPT}

exec "$@"
