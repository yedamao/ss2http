FROM shadowsocks/shadowsocks-libev
LABEL maintainer="yedamao <logindaveye@gmail.com>"

ENV SERVER_ADDR 0.0.0.0
ENV SERVER_PORT 8388
ENV PASSWORD=
ENV METHOD      aes-256-gcm

USER root

RUN set -ex \
 # Build environment setup
 && apk add --no-cache --virtual .build-deps \
      privoxy

COPY config /etc/privoxy/config
COPY entrypoint.sh /entrypoint.sh

EXPOSE 1087

CMD /entrypoint.sh
