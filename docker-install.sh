#!/bin/sh
# docker-install.sh

set -e

PACMAN="$1"

$PACMAN update
$PACMAN install -y docker
service docker start
usermod -a -G docker $USER
chkconfig docker on
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker --version
docker-compose version
echo Dont forget to reboot the server to make the docker command work without sudo
