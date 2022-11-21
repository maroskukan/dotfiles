#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Custom shared aliases
if [ -f "$HOME/.aliases" ]; then
  source $HOME/.aliases
fi

PS1='[\u@\h \W]\$ '

# Starship prompt configuration
if [ -f ~/.config/starship.sh ]; then
  source ~/.config/starship.sh
  eval "$(starship init bash)"
fi