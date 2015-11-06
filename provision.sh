#!/usr/bin/env bash

sudo apt-get install -y vim
cat /vagrant/.bash_aliases >> /home/vagrant/.bash_aliases
sudo cat /vagrant/.vimrc >> /etc/vim/vimrc
