FROM docker.io/amazoncorretto:20.0.1-al2-generic 
LABEL app=minecraft
RUN echo "eula=true" > /usr/local/eula.txt
EXPOSE 25565
RUN mkdir -p /usr/local/logs /usr/local/mods
RUN chgrp -R 0 /run /usr/local /var/cache /var/log /var/run && chmod -R g=u /run /usr/local /var/cache /var/log /var/run 
COPY minecraft_server.1.20.1.jar /usr/local/server.jar
COPY forge-1.20.1-47.0.43-installer.jar /usr/local/mods
WORKDIR /usr/local
ENTRYPOINT ["java", "-Xmx2G", "-Xms2G", "-jar", "server.jar", "nogui"]
