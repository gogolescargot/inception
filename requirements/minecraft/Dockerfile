FROM debian:oldstable

EXPOSE 25565

RUN apt update && apt upgrade && apt install -y wget
RUN wget https://download.oracle.com/java/22/latest/jdk-22_linux-x64_bin.deb
RUN dpkg -i jdk-22_linux-x64_bin.deb
RUN wget https://piston-data.mojang.com/v1/objects/145ff0858209bcfc164859ba735d4199aafa1eea/server.jar

COPY ./tools/eula.txt ./eula.txt
COPY ./tools/server.properties ./server.properties

CMD java -Xmx1024M -Xms1024M -jar server.jar nogui