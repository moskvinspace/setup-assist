## Amazon Linux: install docker & docker-compose
```sh
export PACMAN=yum && /
sudo $PACMAN install -y git && /
git clone https://github.com/moskvinspace/setup-assist.git && /
sudo chmod +x setup-assist/docker-install.sh && /
sudo setup-assist/docker-install.sh $PACMAN
```

