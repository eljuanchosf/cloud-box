#!/bin/bash -e

set -e

echo "Customize the environment with personalized Tmux and Vim installations"
echo "**********************************************************************"
echo

VIM_HOME=/home/$USER/.vim
BASH_GLOBAL=/etc/profile.d/sensible.bash.sh
TMUX_GLOBAL=/etc/tmux.conf

# Prepare environment
sudo apt-get update -qq

# Install tmux and vim
sudo apt-get install tmux vim git wget -y -qq

# Setup Tmux
sudo wget https://raw.githubusercontent.com/eljuanchosf/cloud-box/master/tmux.conf -O $TMUX_GLOBAL

# Setup Vim
rm -rf $VIM_HOME
git clone https://github.com/eljuanchosf/vimrc $VIM_HOME
cd $VIM_HOME
git pull &> /dev/null
git submodule init &> /dev/null
git submodule update &> /dev/null
git submodule status &> /dev/null
rm -rf $VIM_HOME/vimrc
ln -s $VIM_HOME/.vimrc $VIM_HOME/vimrc

# Customize Bash
sudo wget https://raw.githubusercontent.com/eljuanchosf/bash-sensible/master/sensible.bash -O $BASH_GLOBAL
