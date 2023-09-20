FROM adoptopenjdk/openjdk8:latest as jdk

MAINTAINER Laurence Daxes <laurencehr@gmail.com>

ENV MINECRAFT_VERSION 1.20.1
ENV RAM 2G

WORKDIR /data

COPY jar/server-${MINECRAFT_VERSION}.jar /data
COPY data/eula.txt /data
COPY data/server.properties /data

VOLUME /data

# Expose the container's network port: 25565 during runtime.
EXPOSE 25565

#Automatically accept Minecraft EULA, and start Minecraft server
CMD pwd && ls -l && java -Xmx${RAM} -Xms${RAM} -jar /data/server-${MINECRAFT_VERSION}.jar nogui