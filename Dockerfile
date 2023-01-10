FROM docker.io/openjdk:slim
LABEL app=minecraft
RUN echo "eula=true" > /usr/local/eula.txt
EXPOSE 25565
RUN mkdir -p /usr/local/logs /usr/local/mods
RUN chgrp -R 0 /run /usr/local /var/cache /var/log /var/run && chmod -R g=u /run /usr/local /var/cache /var/log /var/run 
COPY minecraft_server.1.19.3.jar /usr/local/server.jar
COPY forge-1.19.3-44.1.4-installer.jar /usr/local/mods
WORKDIR /usr/local
ENTRYPOINT ["java", "-Xmx2G", "-Xms2G", "-jar", "server.jar", "nogui"]
