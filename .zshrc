ZSH_THEME="agnoster"
plugins=(git colored-man-pages)

# Reload theme
source $ZSH/oh-my-zsh.sh

#Alias
source ~/.dotfiles/.aliases

# pnpm
export PNPM_HOME=$HOME/.local/share/pnpm


echo "$(cat $HOME/.dotfiles/banner1"
