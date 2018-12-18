#!/usr/bin/env bash

# options from command line
while getopts p:f:e: option
do
    case "${option}"
    in
        p) PATH=${OPTARG};;
        f) FILE=${OPTARG};;
        e) EVENT=${OPTARG};;
    esac
done

# find the user and group IDs
OPENFIRE_USER_ID=$(/bin/stat -c "%u" ${OPENFIRE_DATA_DIR})
OPENFIRE_GROUP_ID=$(/bin/stat -c "%g" ${OPENFIRE_DATA_DIR})

# on event
DATE=$(/bin/date +"%Y-%m-%d %T")
echo "[${DATE}] ${EVENT}: (u:${OPENFIRE_USER_ID}|g:${OPENFIRE_GROUP_ID}) ${PATH}/${FILE}"

/usr/bin/install -o ${OPENFIRE_USER_ID} -g ${OPENFIRE_GROUP_ID} -m 644 -p ${PATH}/${FILE} ${OPENFIRE_DATA_DIR}/conf/security/hotdeploy/