#/bin/bash

#Permettre l'utilisation du socket de docker
chmod 777 /var/run/docker.sock 

# Creation du repertoire de donnee de portainer
mkdir -p portainer_data
chmod 777 -R portainer_data/

# Creation du repertoire de donnee de la registry
mkdir -p registry_data
chmod 777 -R registry_data/
# Creation du repertoire de donnee de Jenkins
mkdir -p jenkins_data
chmod 777 -R jenkins_data/

mkdir auth
apt install -y apache2-utils certbot python3-certbot-nginx
htpasswd -Bcb registry.passwd admin admin

cp registry.passwd auth/
rm registry.passwd

# docker network create --driver overlay --attachable internet_bj
docker build -t registry.dev.internet.bj/internet-bj-jenkins:private .

docker stack deploy -c stack.yml global

docker stack deploy -c portainer-agent-stack.yml portainer


