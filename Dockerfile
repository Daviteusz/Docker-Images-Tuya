FROM phusion/baseimage:latest-arm

RUN apt-get update && apt-get install -y sudo git iproute2 iputils-ping

RUN echo '* libraries/restart-without-asking boolean true' | debconf-set-selections

COPY docker/bin /usr/bin/

RUN cd /usr/bin/ && git clone -b development https://github.com/ct-Open-Source/tuya-convert.git

RUN cd /usr/bin/tuya-convert && ./install_prereq.sh

RUN mkdir -p /etc/service/tuya && cd /etc/service/tuya && ln -s /usr/bin/config.sh run
