FROM ubuntu:14.04
MAINTAINER roy.wang wangkangluo1@gmail.com

#init env
RUN set -xe \
	&& echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list  \
	&& apt-get update  \
	&& apt-get install -y wget curl python-pip python-dev libffi-dev

#install mongodb	
RUN apt-get install -y --force-yes mongodb-org  \
	mkdir -p /data/db \

#install alerta-server
RUN pip install alerta-server 	

#install alerta-console-web
cd /opt
wget -O alerta-web.tgz https://github.com/alerta/angular-alerta-webui/tarball/master 
tar zxvf alerta-web.tgz 
cd alerta-angular-alerta-webui-*/app 