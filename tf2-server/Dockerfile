FROM ubuntu:16.04

WORKDIR /tf2-server

RUN dpkg --add-architecture i386 && \
    apt -y update && \
    apt upgrade -y && \
    apt -y install lib32z1 libncurses5:i386 libbz2-1.0:i386 lib32gcc1 lib32stdc++6 libtinfo5:i386 libcurl3-gnutls:i386 curl && \
    apt clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    curl http://media.steampowered.com/client/steamcmd_linux.tar.gz | tar -xvz

COPY . ./

RUN ./update.sh && \
    mkdir -p .steam && \
    ln -s linux32 .steam/sdk32 && \
    mv server.cfg tf2/tf/cfg

EXPOSE 27015/udp 27015
EXPOSE 27005/udp
EXPOSE 27020/udp

CMD ["./tf.sh"]
