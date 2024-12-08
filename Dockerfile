FROM openjdk:24-slim

LABEL app=minecraft \
      org.opencontainers.image.description="Minecraft Server" \
      org.opencontainers.image.source="https://github.com/ocpdude/minecraft"

RUN echo "eula=true" > /usr/local/eula.txt

EXPOSE 25565

# hadolint ignore=DL3008,SC2034
RUN mkdir -p /usr/local/logs /usr/local/mods \
  && apt-get update && apt-get install -y curl --no-install-recommends \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && chgrp -R 0 /run /usr/local /var/cache /var/log /var/run && chmod -R g=u /run /usr/local /var/cache /var/log /var/run \
  && curl -o /usr/local/server.jar https://piston-data.mojang.com/v1/objects/4707d00eb834b446575d89a61a11b5d548d8c001/server.jar \
  && curl -o /usr/local/mods/forge-1.21.4.jar https://adfoc.us/serve/sitelinks/?id=271228&url=https://maven.minecraftforge.net/net/minecraftforge/forge/1.21.4-54.0.6/forge-1.21.4-54.0.6-installer.jar

WORKDIR /usr/local

ENTRYPOINT ["java", "-Xmx2G", "-Xms2G", "-jar", "server.jar", "nogui"]