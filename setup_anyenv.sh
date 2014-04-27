#!/bin/bash
git clone https://github.com/riywo/anyenv ~/.anyenv
cat <<'EOF' >> ~/.bash_profile

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
EOF
exec $SHELL -l
