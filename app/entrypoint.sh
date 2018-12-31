#!/usr/bin/env bash

/usr/sbin/addgroup ${INCRONUSER}
/usr/sbin/adduser -s /bin/sh -D -H -h /dev/null -g "" -G ${INCRONUSER} ${INCRONUSER}
echo root > /etc/incron.allow
echo ${INCRONUSER} >> /etc/incron.allow

#import watch files to non root incron user tab
for f in ${WATCHFILEDIR}/*;
  do incrontab -u ${INCRONUSER} $f
  echo "Imported" $f
done

exec "$@"
