#!/bin/sh

ss-local -s $SERVER_ADDR -p $SERVER_PORT -m $METHOD -k $PASSWORD -l 1086 -b 0.0.0.0 &

privoxy --no-daemon /etc/privoxy/config
