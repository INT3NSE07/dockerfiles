FROM alpine:3.8

ARG MUMBLE_VERSION=1.2.19
ARG BZIP_URL=https://github.com/mumble-voip/mumble/releases/download/${MUMBLE_VERSION}/murmur-static_x86-${MUMBLE_VERSION}.tar.bz2

COPY ./config.ini /etc/mumble/config.ini
COPY ./supw /usr/local/bin/supw

RUN mkdir -pv /opt/mumble /etc/mumble && \
    adduser -DHs /sbin/nologin mumble && \
    chmod +x /usr/local/bin/supw && \
    apk add --update ca-certificates bzip2 tar tzdata wget \
    && wget -qO- ${BZIP_URL} | tar -xjv --strip-components=1 -C /opt/mumble \
    && apk del ca-certificates bzip2 tar wget && rm -rf /var/cache/apk/* \
    && chown -R mumble:mumble /etc/mumble /opt/mumble

EXPOSE 64738 64738/udp

USER mumble

VOLUME /etc/mumble

CMD ["/opt/mumble/murmur.x86", "-fg", "-ini", "/etc/mumble/config.ini"]
