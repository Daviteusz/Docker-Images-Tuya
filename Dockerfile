FROM ubuntu:latest
#TAG tuya:latest

RUN apt-get update
RUN apt-get install -y git iptables iproute2 iputils-ping sudo
RUN echo '* libraries/restart-without-asking boolean true' | debconf-set-selections
COPY files/bin /usr/bin/
RUN cd /usr/bin/ && git clone -b master https://github.com/ct-Open-Source/tuya-convert.git && cd /usr/bin/tuya-convert && git checkout dbeab1ba9d8730b2fbf97b48b7115c2b418a592e

RUN cd /usr/bin/tuya-convert && ./install_prereq.sh
