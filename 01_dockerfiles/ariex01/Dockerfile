FROM debian

ENV TS3SERVER_LICENSE accept

RUN apt-get update \
&& apt-get -y install bzip2 wget \
&& mkdir /data

COPY start_ts.sh /start_ts

EXPOSE 9987/udp 10011 30033

VOLUME /data
WORKDIR /data
CMD ["/start_ts"]
