#!/bin/bash

# Note this script will complain if you try to run it as user other than "www"
# USAGE: ./up.sh <port> <logfile>

if [[ $USER -ne "www" ]]; then
  echo "This should be run as user 'www'."
fi

$QHOME/l32/q up.q $1 $2 &
