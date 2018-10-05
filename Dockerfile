FROM python:2-slim-jessie

ADD src/* /

RUN apt-get update \
    && apt-get install -y wget \
    && wget "https://www.dropbox.com/download?plat=lnx.x86_64" \
    && mv download\?plat=lnx.x86_64 dropbox.tgz \
    && tar xzf dropbox.tgz \
    && rm dropbox.tgz

WORKDIR /root
ENTRYPOINT ["/entrypoint.sh"]
