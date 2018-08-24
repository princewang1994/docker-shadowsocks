# shadowsocks
#
# VERSION 0.0.3

FROM ubuntu:16.04
MAINTAINER Prince Wang <princewang1994@gmail.com>

COPY sources.list /etc/apt/sources.list
COPY startup.sh /root/startup.sh

RUN apt-get update
RUN apt-get install -y python-pip
RUN pip install shadowsocks

RUN mkdir /etc/shadowsocks

EXPOSE 8388

# Configure container to run as an executable
CMD ["/bin/bash", "/root/startup.sh"]

# Clean up for smaller image
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
