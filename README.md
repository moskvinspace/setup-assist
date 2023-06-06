## Amazon Linux: install docker & docker-compose
```sh
export PACMAN=yum && /
export SCRIPT=docker-install.sh && /
curl -L https://raw.githubusercontent.com/moskvinspace/setup-assist/main/$SCRIPT -o $SCRIPT && /
sudo chmod +x $SCRIPT && /
sudo ./$SCRIPT $PACMAN
```

