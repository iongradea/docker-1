# Pour build :
# docker build -t <name> .
# Pour run :
# docker run  -d --publish=9987:9987/udp --publish=30033:30033/tcp --publish=10011:10011/tcp --name teamcontainer <name>
# utiliser teamspeak from msc on 42 mac


FROM debian

ADD http://dl.4players.de/ts/releases/3.0.13.6/teamspeak3-server_linux_amd64-3.0.13.6.tar.bz2 ./

RUN export DEBIAN_FRONTEND=noninteractive \
  && apt-get update \
  && apt-get upgrade -y\
  && apt-get install -y apt-utils bzip2 \
  && tar xjf teamspeak3-server_linux_amd64-3.0.13.6.tar.bz2 \
  && rm teamspeak3-server_linux_amd64-3.0.13.6.tar.bz2 \
  && mv teamspeak3-server_linux_amd64 /opt/teamspeak

RUN useradd teamspeak && mkdir -p /opt/teamspeak/data && chown teamspeak:teamspeak /opt/teamspeak/data
VOLUME ["/opt/teamspeak/data"]

EXPOSE 9987/udp
EXPOSE 30033
EXPOSE 10011
WORKDIR /opt/teamspeak
USER teamspeak

#serveur qui se lancera au démarrage de votre container
CMD /opt/teamspeak/ts3server_minimal_runscript.sh start
