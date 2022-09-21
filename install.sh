#!/bin/bash

#actualizacion
sudo apt update && sudo apt upgrade
sudo apt autoremove

#instalaciones
sudo apt install bash zsh zgen sudo wget git curl exa

#bat
wget https://github.com/sharkdp/bat/releases/download/v0.22.1/bat-musl_0.22.1_amd64.deb
sudo apt install ./bat-musl_0.22.1_i686.deb

#exa
EXA_VERSION=$(curl -s "https://api.github.com/repos/ogham/exa/releases/latest" | grep -Po '"tag_name": "v\K[0-9.]+')
curl -Lo exa.zip "https://github.com/ogham/exa/releases/latest/download/exa-linux-x86_64-v${EXA_VERSION}.zip" 
sudo unzip -q ./exa.zip bin/exa -d /usr/local
rm -rf exa.zip

# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
echo source $HOME/.dotfiles/.zshrc >> ~/.zshrc

# Change to ZSH
sudo chsh -s /usr/bin/zsh

zsh


