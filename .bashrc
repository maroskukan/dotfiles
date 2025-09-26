#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Custom shared aliases
if [ -f "$HOME/.aliases" ]; then
  source $HOME/.aliases
fi

# Custom private aliases
if [ -f "$HOME/.privatealiases" ]; then
  source $HOME/.privatealiases
fi

# Custom shared exports
if [ -f "$HOME/.exports" ]; then
  source $HOME/.exports
fi

#PS1='[\u@\h \W]\$ '

# Set history - size
export HISTSIZE=10000

# Set history - timestamps
export HISTTIMEFORMAT="%F %T "

# Set history - ignore commands that start with space
export HISTCONTROL=ignorespace

# Starship prompt configuration
if [ -f ~/.config/starship.sh ]; then
  source ~/.config/starship.sh
  eval "$(starship init bash)"
fi

if [ -f "/etc/profile.d/bash_completion.sh" ]; then
  source /etc/profile.d/bash_completion.sh
fi

# Custom configuration for pyenv
if [ -f "$HOME/.pyenv/bin/pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi
if [ -f "$HOME/.pyenv/plugins/pyenv-virtualenv/bin/pyenv-virtualenv" ]; then
  export PYENV_VIRTUALENV_DISABLE_PROMPT=1
  eval "$(pyenv virtualenv-init -)"
fi

# Custom configuration for tfswitch
command -v terraform >/dev/null || export PATH="$HOME/bin:$PATH"

# Direnv shell integration
if command -v direnv &> /dev/null; then
    eval "$(direnv hook bash)"
fi
