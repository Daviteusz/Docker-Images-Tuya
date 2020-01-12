FROM phusion/baseimage:latest-arm64
#TAG tuya:latest

RUN apt-get update && \
    apt-get install -y \
    git \
    sudo \
    iptables \
    iproute2 \
    iputils-ping

RUN echo '* libraries/restart-without-asking boolean true' | debconf-set-selections

COPY files/bin /usr/bin/

RUN cd /usr/bin/ && git clone -b development https://github.com/ct-Open-Source/tuya-convert/tuya-convert.git && cd /usr/bin/tuya-convert

RUN cd /usr/bin/tuya-convert && ./install_prereq.sh
