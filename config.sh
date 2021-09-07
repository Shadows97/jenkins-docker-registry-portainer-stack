#/bin/bash

chmod 777 /var/run/docker.sock
mkdir auth && cd auth
apt install -y apache2-utils cerbot
htpasswd -Bc registry.passwd admin admin

cd ..
docker build -t registry.dev.internet.bj/internet-bj-jenkins:private .
