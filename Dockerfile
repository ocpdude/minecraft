FROM openjdk:latest
LABEL app=minecraft
RUN echo "eula=true" > /usr/local/eula.txt
EXPOSE 25565
RUN mkdir -p /usr/local/logs /usr/local/mods
RUN chgrp -R 0 /run /usr/local /var/cache /var/log /var/run && chmod -R g=u /run /usr/local /var/cache /var/log /var/run 
COPY minecraft_server.1.18.1.jar /usr/local/
COPY forge-1.18.1-39.0.59-installer.jar /usr/local/mods
WORKDIR /usr/local
ENTRYPOINT java -Xmx2G -Xms2G -jar minecraft_server.1.18.1.jar nogui
