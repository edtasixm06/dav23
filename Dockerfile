# WebDav Server
FROM debian:11
LABEL version="1.0"
LABEL author="@edt ASIX-M06"
LABEL subject="WebDav Server: Serveix contingut git"
RUN apt-get update
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get --fix-missing -y install procps iproute2 tree nmap vim less passwd git apache2 davfs2
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh
WORKDIR /opt/docker
CMD /opt/docker/startup.sh
