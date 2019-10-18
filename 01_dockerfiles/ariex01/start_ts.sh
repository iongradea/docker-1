#!/bin/bash
cd /data

wget http://dl.4players.de/ts/releases/3.1.0/teamspeak3-server_linux_amd64-3.1.0.tar.bz2 \
	&& tar -j -x -f teamspeak3-server_linux_amd64-3.1.0.tar.bz2 --strip-components=1 \
	&& rm -rf teamspeak3-server_linux_amd64-3.1.0.tar.bz2

export LD_LIBRARY_PATH=".:/data:/data/redist"

exec ./ts3server
