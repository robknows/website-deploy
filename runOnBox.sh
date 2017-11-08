#!/bin/bash

# USAGE: ./runOnBox.sh <command>
# where <command> is a string e.g. ./runOnBox.sh "mkdir new_directory"
ssh -i $(cat KEY_PATH) -t ubuntu@$(cat PUBLIC_DNS) $1
