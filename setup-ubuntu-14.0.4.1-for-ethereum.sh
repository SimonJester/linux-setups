#!/usr/bin/env bash

sudo apt-get update -y && sudo apt-get dist-upgrade && sudo apt-get autoremove
sudo apt-get install -y python-setuptools python-dev build-essential cmake
easy_install pip
pip install --upgrade virtualenv
pip install -U pytest pytest-cov
sudo apt-get install -y curl && vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen/vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle && git clone git://github.com/klen/python-mode.git
cd ~/.vim/bundle/python-mode
cd ~/.vim/bundle && git clone https://github.com/scrooloose/syntastic.git
cd ~/.vim/bundle && git clone https://github.com/Valloric/YouCompleteMe.git
cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive && ./install.sh --clang-completer

