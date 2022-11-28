ZSH="$HOME/.oh-my-zsh"

#Theme
ZSH_THEME=""

#Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting ssh-agent z)
source $ZSH/oh-my-zsh.sh

# Custom shared aliases
if [ -f "$HOME/.aliases" ]; then
  source $HOME/.aliases
fi

# Starship prompt configuration
if [ -f ~/.config/starship.sh ]; then
  source ~/.config/starship.sh
  eval "$(starship init zsh)"
fi
