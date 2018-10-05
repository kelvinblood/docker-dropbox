#!/bin/bash

if [ ! -e /root/.dropbox-dist ]; then
  cp -R /.dropbox-dist /root
fi

/root/.dropbox-dist/dropboxd
