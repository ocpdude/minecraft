# Overwrite server.properies by mounting a configmap volume to /usr/local/bedrock_server/server.properties
FROM docker.io/ubuntu:20.04

LABEL app=minecraft \
      org.opencontainers.image.description="Minecraft Bedrock Server" \
      org.opencontainers.image.source="https://github.com/ocpdude/minecraft"

ARG BEDROCK_VERSION=1.20.61.01

RUN apt-get update \
    && apt-get install -y wget unzip curl --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/local

RUN wget -O bedrock-server.zip https://minecraft.azureedge.net/bin-linux/bedrock-server-${BEDROCK_VERSION}.zip --no-check-certificate \
  && unzip bedrock-server.zip -d /usr/local \
  && rm bedrock-server.zip

ENV LD_LIBRARY_PATH=/usr/local/

EXPOSE 19132

RUN mkdir -p /usr/local/logs /usr/local/mods \
  && chgrp -R 0 /run /usr/local /var/cache /var/log /var/run && chmod -R g=u /run /usr/local /var/cache /var/log /var/run 


ENTRYPOINT ["/usr/local/bedrock_server"]