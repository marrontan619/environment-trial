#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y vim
sudo apt-get install -y bash-completion
sudo apt-get install -y lxc-docker
cat /vagrant/.bash_aliases >> /home/vagrant/.bash_aliases
sudo cat /vagrant/.vimrc >> /etc/vim/vimrc

sudo -i
COMPOSE_VERSION=1.12.0-rc1
curl -L https://github.com/docker/compose/releases/download/$COMPOSE_VERSION/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
curl -L https://raw.githubusercontent.com/docker/compose/$COMPOSE_VERSION/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose
