#!/bin/bash

# USAGE: ./copyToBox.sh <local_file> <path from /home/ubuntu/ on box>

scp -r -i rob-amazon.pem $1 ubuntu@$(cat PUBLIC_DNS):/home/ubuntu/$2
