#!/bin/sh
# docker-install.sh

set -e

PACMAN="$1"

$PACMAN update
$PACMAN install -y docker
service docker start
usermod -a -G docker $USER
chkconfig docker on
curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker --version;export statusdocker=$(echo $?)
[$statusdocker -eq 0] && echo $'Dont forget to reboot the server to make the docker command work without sudo!'
docker-compose version
