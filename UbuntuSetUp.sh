#!/bin/sh
# UbuntuSetUp.sh
# sh UbuntuSetUp.sh

sudo apt-get update
sudo apt upgrade

# gcc install
which gcc || sudo apt-get install gcc

# gdb install
which gdb || sudo apt-get install gdb

# nkf install
which nkf || sudo apt-get install nkf

# 日本語化
sudo apt -y install language-pack-ja
sudo update-locale LANG=ja_JP.UTF8
sudo apt -y install manpages-ja manpages-ja-dev

# bashdb install
which bashdb || brew install bashdb

# homebrew
# Run as non-root user
whoami | grep -F -q "root"
RetCode=$?
test $RetCode -eq 1 && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
test $RetCode -eq 1 && test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test $RetCode -eq 1 && test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test $RetCode -eq 1 && test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
test $RetCode -eq 1 && cat "~/.profile" | grep -F -q "/bin/brew shellenv)" || echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

# pipenv
which pipenv || brew install pipenv

# pyenv
which zlib1g-dev || sudo apt install zlib1g-dev
which pyenv || brew install pyenv

# tmux
which tmux || brew install tmux

# poppler
which pdftotext || brew install poppler

# tesseract
which tesseract || brew install tesseract

# imagemagick
which imagemagick || brew install imagemagick

