#!/bin/bash

# This script assumes that the box has got q sitting in $HOME i.e. that cloneToBox.sh has been called already.

sudo apt-get install rlwrap
sudo apt-get install lib32z1
echo "export QHOME=$HOME/q" >> ~/.bashrc
echo "alias q='rlwrap ~/q/l32/q'" >> .bash_aliases
echo "alias l='ls -X'" >> .bash_aliases
source ~/.bashrc
exit 0
