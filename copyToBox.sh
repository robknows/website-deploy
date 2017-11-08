#!/bin/bash

# USAGE: ./copyToBox.sh <local_file> <path from /home/ubuntu/ on box>

scp -r -i $(cat KEY_PATH) $1 ubuntu@$(cat PUBLIC_DNS):/home/ubuntu/$2
