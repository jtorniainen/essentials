#!/bin/bash

# Copy .vimrc
cp ./.vimrc ~/

# Install basic python stuff
sudo apt-get install python-dev python-pip python3-dev python3-pip

# Install misc. packages
sudo apt-get install zsh  tmux

# Install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Install vim
sudo apt-get install vim

# Install neovim
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

# Install neovim plugin-loader
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Copy neovim configuration
cp ./init.vim ~/.config/nvim/init.vim
