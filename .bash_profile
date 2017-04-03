
export PATH=$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin
export EDITOR=vim

export LESS=-qRnX

# Wrap lines in journalctl http://forums.fedoraforum.org/showthread.php?t=301153
export SYSTEMD_LESS="FRXMK"

ulimit -S -n 10240

# go
export GOPATH=$HOME/gocode
export PATH=$GOPATH/bin:$PATH

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# direnv
eval "$(direnv hook bash)"

export PATH="/Library/Java/JavaVirtualMachines/jdk1.8.0_66.jdk/Contents/Home/bin:$PATH"

export RUBYGEMS_GEMDEPS=-

if [ -f $HOME/.bashrc ]; then
  . $HOME/.bashrc
fi
