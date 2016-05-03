#!/bin/bash

# Install basic python stuff
sudo apt-get install python-dev python-pip python3-dev python3-pip

# Install vim
sudo apt-get install vim

# Install neovim
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

# Copy .vimrc
cp ./.vimrc ~/

# TODO: Copy nvim configurations
