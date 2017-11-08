#!/bin/bash

# USAGE: ./copyToBox.sh <filepath from /home/ubuntu/ on box> <local path>

scp -r -i $(cat KEY_PATH) ubuntu@$(cat PUBLIC_DNS):/home/ubuntu/$1 $2
