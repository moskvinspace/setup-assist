#!/bin/sh
# docker-install.sh

set -e

PACMAN="$1"

$PACMAN update
$PACMAN install docker
service docker start
usermod -a -G docker ec2-user
chkconfig docker on
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose version
