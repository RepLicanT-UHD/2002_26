FROM ubuntu:24.04

LABEL maintainer="Roman Arnikov"

RUN apt update; \
    apt install -y wget; \
    wget https://aigen.obs.ru-moscow-1.hc.sbercloud.ru/form-save.tar.gz; \
    tar xf form-save.tar.gz; \
    cp form-save /usr/local/bin/form-save; \
    cp start.sh /usr/local/bin/start.sh; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 700 form-save;

RUN chmod 700 start.sh;

CMD start.sh
