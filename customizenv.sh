#!/bin/bash -e

echo "Customize the environment with personalized Tmux and Vim installations"
echo "**********************************************************************"
echo

# Prepare environment
sudo apt-get update -qq

# Install tmux and vim
sudo apt-get install tmux vim git wget -y -qq

# Setup Tmux
wget https://raw.githubusercontent.com/eljuanchosf/cloud-box/master/tmux.conf -O $HOME/.tmux.conf

# Setup Vim
rm -rf $HOME/.vim
cd $HOME
git -q clone https://github.com/eljuanchosf/vimrc .vim
git -q pull && git -q submodule init && git -q submodule update && git -q submodule status
cd
ln -s .vim/.vimrc_full .vimrc

# Customize Bash
https://raw.githubusercontent.com/eljuanchosf/bash-sensible/master/sensible.bash -O $HOME/.sensible.bash
cat >> $HOME/.bashrc <<'EOF'

# Sensible BASH loading

SENSIBLE_BASH_FILE="$HOME/.sensible.bash"

if [ -f $SENSIBLE_BASH_FILE ]; then
   source $SENSIBLE_BASH_FILE
fi
EOF
