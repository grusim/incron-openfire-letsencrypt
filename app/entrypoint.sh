#!/usr/bin/env bash

/usr/sbin/adduser -s /sbin/nologin -D -H -g "" ${INCRONUSER}
echo ${INCRONUSER} > /etc/incron.allow

# debugging
top

exec "$@"
