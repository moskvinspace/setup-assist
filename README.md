## Amazon Linux: install docker & docker-compose
```sh
export PACMAN=yum && /
export SCRIPT=docker-install.sh && /
curl -L https://github.com/moskvinspace/setup-assist/raw/main/$SCRIPT -o $SCRIPT && /
sudo chmod +x $SCRIPT && /
sudo ./$SCRIPT $PACMAN
```

