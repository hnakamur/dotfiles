
export PATH=$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin
export EDITOR=vim
export LESS=-qRn

ulimit -S -n 10240

# go
export GOPATH=$HOME/gocode
export PATH=$GOPATH/bin:$PATH

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# direnv
eval "$(direnv hook bash)"

if [ -f $HOME/.bashrc ]; then
  . $HOME/.bashrc
fi
