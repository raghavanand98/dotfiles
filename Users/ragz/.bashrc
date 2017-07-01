eval "$(thefuck --alias)"

export NVM_DIR="/Users/ragz/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

alias gad="git --work-tree=/ add ~/.bash_profile ~/.tmux.conf ~/.bashrc ~/.vimrc ~/.gitignore_global " #git add dotfiles
alias ctags='/usr/local/bin/ctags'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
