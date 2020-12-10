export LESS=-qRnX

# Wrap lines in journalctl http://forums.fedoraforum.org/showthread.php?t=301153
export SYSTEMD_LESS="FRXMK"

ulimit -S -n 10240

# direnv
eval "$(direnv hook bash)"

if [ -f $HOME/.bashrc ]; then
  . $HOME/.bashrc
fi
