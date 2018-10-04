#!/bin/bash

if [ $1 ]; then
docker run --rm \
  -v /root/Dropbox:/root/Dropbox \
  -v /root/.dropbox:/root/.dropbox \
  -v /root/.dropbox-dist:/root/.dropbox-dist \
  kelvinblood/dropbox $1
else
docker run --name=dropbox -d \
  --entrypoint=/.dropbox-dist/dropboxd \
  -v /root/Dropbox:/root/Dropbox \
  -v /root/.dropbox:/root/.dropbox \
  -v /root/.dropbox-dist:/root/.dropbox-dist \
  kelvinblood/dropbox
fi
