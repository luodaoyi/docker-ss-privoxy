#!/bin/sh

nohup privoxy --no-daemon /etc/privoxy/config &
ss-local -s ${SERVER_ADDR} -p ${SERVER_PORT} -k ${PASSWORD} -m ${METHOD} -b ${LISTEN_ADDR} -l 7070 -t ${TIMEOUT} ${SS_ARGS}
