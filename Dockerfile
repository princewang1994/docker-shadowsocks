# Shadowsocks Dockerfile
#
# VERSION 0.0.4

FROM ubuntu:16.04
MAINTAINER Prince Wang <princewang1994@gmail.com>

COPY mirrors/sources.list /etc/apt/sources.list
COPY scripts/startup.sh /root/startup.sh

# Update apt source
RUN apt-get update
RUN apt-get install -y python-pip

# Install python shadowsocks
RUN pip install shadowsocks
RUN mkdir /etc/shadowsocks

# Expose port
EXPOSE 8388
EXPOSE 1080

# Configure container to run as an executable
CMD ["/bin/bash", "/root/startup.sh"]

# Clean up for smaller image
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
