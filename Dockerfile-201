FROM eclipse-temurin:17-jre-alpine as jre

MAINTAINER Laurence Daxes <laurencehr@gmail.com>

ENV MINECRAFT_VERSION 1.20.1
ENV RAMS 2G
ENV RAMX 2G

WORKDIR /data

COPY jar/server-${MINECRAFT_VERSION}.jar /data
COPY data/eula.txt /data
COPY data/server.properties /data

VOLUME /data

# Expose the container's network port: 25565 during runtime.
EXPOSE 25565

#Automatically accept Minecraft EULA, and start Minecraft server
CMD pwd && ls -l && java -Xmx${RAMX} -Xms${RAMS} -jar /data/server-${MINECRAFT_VERSION}.jar nogui