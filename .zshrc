ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git colored-man-pages)

# Reload theme
source $ZSH/oh-my-zsh.sh

#Alias
source ~/.dotfiles/.aliases

#node
export NVM_DIR=$HOME/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME=$HOME/.local/share/pnpm



export PATH=$HOME/bin:/usr/games:/usr/local/bin:$HOME/.nvm:$PNPM_HOME:$PATH


echo "$(cat $HOME/.dotfiles/banner1"

