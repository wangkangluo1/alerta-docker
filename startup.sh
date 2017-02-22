#!/bin/bash
set -x
echo "connect to mysql server:  ${MYSQL_SERVER}"

#run mongdodb
nohup mongod > /var/log/mongo.log 2>&1 &

#run alertad
nohup alertad > /var/log/alerta.log 2>&1 &

#run alerta-web-console
cd /opt/alerta-angular-alerta-webui-*/app
nohup python -m SimpleHTTPServer 8000 > /var/log/alerta-web-console.log 2>&1 &

while true; do sleep 1000; done
