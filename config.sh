#/bin/bash

#Permettre l'utilisation du socket de docker
chmod 777 /var/run/docker.sock 

# Creation du repertoire de donnee de portainer
mkdir portainer_data

# Creation du repertoire de donnee de la registry
mkdir registry_data

# Creation du repertoire de donnee de Jenkins
mkdir jenkins_data

mkdir auth && cd auth
apt install -y apache2-utils certbot python3-certbot-nginx
htpasswd -Bcb registry.passwd admin admin

# docker network create --driver overlay --attachable internet_bj
cd ..
docker build -t registry.dev.internet.bj/internet-bj-jenkins:private $(pwd)/Dockerfile

docker stack deploy -c stack.yml global

docker stack deploy -c portainer-agent-stack.yml portainer


