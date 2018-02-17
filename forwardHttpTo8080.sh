#!/bin/bash

# This is so that you don't have to run the server as root, and can instead run
# it as some unprivileged web user.

sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080
