#/bin/bash
mkdir auth && cd auth
apt install -y apache2-utils
htpasswd -Bc registry.passwd admin admin