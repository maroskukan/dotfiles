# Dotfiles

## Usage

Fork this repository and follow the steps below:

Create a new .dotfiles directory and initialize a bare repository.
```bash
mkdir -p $HOME/dotfiles && git init --bare $_
```

> **Note**: To make your life easier, ensure that the initial branch name is `main` by using `git config --global init.defaultBranch main`

Create a runtime alias.
```bash
alias config='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'
```

Optionally hide untracked files
```bash
config config --local status.showUntrackedFiles no
```

Configure the upstream repository, update with your username.
```bash
config remote add origin git@github.com:maroskukan/dotfiles
```

Pull from origin.
```bash
config pull origin main
```

> **Note**: If you receive an error `Error: Untracked working tree file <file-name> would be overwritten by merge`. You can add it `config add <file-name>` and stash it `config stash` and then pull again.

When ready, source the `.bashrc` file to make changes effective.
