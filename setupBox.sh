#!/bin/bash

# This script assumes that the box has got q sitting in $HOME i.e. that cloneToBox.sh has been called already.

# Dependencies
sudo apt-get install rlwrap
sudo apt-get install lib32z1

# Env
echo "export QHOME=$HOME/q" >> ~/.bashrc
echo "alias q='rlwrap $QHOME/l32/q'" >> .bash_aliases
echo "alias l='ls -X'" >> .bash_aliases
source ~/.bashrc

# Setup www user
./forwardHttpTo8080.sh
./addWwwUser.sh
exit 0
