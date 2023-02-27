ZSH="$HOME/.oh-my-zsh"

#Theme
ZSH_THEME=""

#Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting z)
source $ZSH/oh-my-zsh.sh


# Custom shared aliases
if [ -f "$HOME/.aliases" ]; then
  source $HOME/.aliases
fi


# Custom configuration for pyenv
if [ -f "$HOME/.pyenv/bin/pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  command -v pyenv >/dev/null
  eval "$(pyenv init -)"
fi
if [ -f "$HOME/.pyenv/plugins/pyenv-virtualenv/bin/pyenv-virtualenv" ]; then
  export PYENV_VIRTUALENV_DISABLE_PROMPT=1
  eval "$(pyenv virtualenv-init -)"
fi


# Custom configuration for Vagrant
kernel=$(uname -r) 
chkvag=$(which vagrant)
if [[ "$kernel" == *"WSL2"* && -f $chkvag ]]; then
  #default_user=$(powershell.exe -c '$env:UserName' | awk '{print tolower($0)}')
  export VAGRANT_WSL_WINDOWS_ACCESS_USER_HOME_PATH="/mnt/c/Users/maros_kukan"
  export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS=1
  export VAGRANT_DEFAULT_PROVIDER=hyperv
  # Enable forwarding between WSL network and Default Hyper-V Switch
  powershell.exe -c "Get-NetIPInterface | where {\$_.InterfaceAlias -eq 'vEthernet (WSL)' -or \$_.InterfaceAlias -eq 'vEthernet (Default Switch)'} | Set-NetIPInterface -Forwarding Enabled 2> \$null"
fi


# Starship prompt configuration
if [ -f ~/.config/starship.sh ]; then
  source ~/.config/starship.sh
  eval "$(starship init zsh)"
fi
