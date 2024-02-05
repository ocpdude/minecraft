FROM docker.io/amazoncorretto:21-alpine-full

LABEL app=minecraft \
      org.opencontainers.image.description="Minecraft Server" \
      org.opencontainers.image.source="https://github.com/ocpdude/minecraft"

RUN echo "eula=true" > /usr/local/eula.txt

EXPOSE 25565

RUN mkdir -p /usr/local/logs /usr/local/mods \
  && chgrp -R 0 /run /usr/local /var/cache /var/log /var/run && chmod -R g=u /run /usr/local /var/cache /var/log /var/run 

COPY minecraft_server.1.20.4.jar /usr/local/server.jar
COPY forge-1.20.4-49.0.26-installer.jar /usr/local/mods

WORKDIR /usr/local

ENTRYPOINT ["java", "-Xmx2G", "-Xms2G", "-jar", "server.jar", "nogui"]
