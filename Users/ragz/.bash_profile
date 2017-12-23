source ~/.profile
PATH=~/anaconda3/bin:$PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
. ~/.bashrc

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim
