#!/bin/bash

#actualizacion
sudo apt-get -y update && sudo apt-get -y full-upgrade
sudo apt autoremove

#instalaciones
sudo apt-get -y install bash dpkg zsh zgen sudo wget git curl tldr lolcat git-flow unzip zip exa cloc bat



#bat
#wget https://github.com/sharkdp/bat/releases/download/v0.22.1/bat-musl_0.22.1_amd64.deb
#sudo apt install ./bat-musl_0.22.1_i686.deb



#node
# node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source $HOME/.nvm/nvm.sh
nvm install --lts

#pnpm mas rapido mas rapido que npm reutiliza de otros proyectos los paquetes
sudo npm install -g pnpm

#mkweb vite
sudo curl -s https://manz.dev/download/mkweb -o /usr/local/bin/mkweb
sudo chmod +x /usr/local/bin/mkweb



# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
echo source $HOME/.dotfiles/.zshrc >> ~/.zshrc

PNPM_HOME=$HOME/.local/share/pnpm
PATH=$HOME/bin:/usr/local/bin:$HOME/.nvm:/usr/local/go/bin:$HOME/.deno/bin:$HOME/.cargo/bin:/usr/share/go/bin:$PNPM_HOME:$PATH


#powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Change to ZSH
sudo chsh -s /usr/bin/zsh

zsh



