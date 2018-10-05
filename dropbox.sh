#!/bin/bash

if [ $1 ]; then
  docker exec dropbox python /dropbox.py $1
else
docker run --name=dropbox -d \
  -v /root/Dropbox:/root/Dropbox \
  -v /root/.dropbox:/root/.dropbox \
  kelvinblood/dropbox:v0.2
fi
