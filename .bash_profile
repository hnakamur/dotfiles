# ~/.bash_profile

# use simple prompt
export PS1="$ "

export PATH=~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export EDITOR=vim

# MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH

ulimit -S -n 10240

# go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# direnv
eval "$(direnv hook bash)"

# copied from http://qiita.com/m-yamashita/items/9a9adf1e1d7219284049 and modified
up() { local dir=''; for ((i=${1:-1};i;i--)); do dir=$dir../; done; cd $dir; }

# copied from http://hitode909.hatenablog.com/entry/20100211/1265879271 and modified
u() {
  cd ./$(git rev-parse --show-cdup)
  if [ $# -eq 1 ]; then
    cd $1
  fi
}

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
