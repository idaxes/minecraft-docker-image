FROM adoptopenjdk/openjdk8:latest

MAINTAINER Daxes <git@daxes.net>

ENV MINECRAFT_VERSION 1.16.4
ENV RAMX 2G
ENV RAMS 2G

WORKDIR /data

COPY jar/server-${MINECRAFT_VERSION}.jar /data
COPY data/eula.txt /data
COPY data/server.properties /data

VOLUME /data

# Expose the container's network port: 25565 during runtime.
EXPOSE 25565

#Automatically accept Minecraft EULA, and start Minecraft server
CMD pwd && ls -l && java -Xms${RAMS}M -Xmx${RAMX}M -jar /data/server-${MINECRAFT_VERSION}.jar nogui