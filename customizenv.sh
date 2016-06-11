#!/bin/bash -e

echo "Customize the environment with personalized Tmux and Vim installations"
echo "**********************************************************************"
echo

# Prepare environment
sudo apt-get update -qq

# Install tmux and vim
sudo apt-get install tmux vim git wget -y -qq

# Setup Tmux
wget https://
