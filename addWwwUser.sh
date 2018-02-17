#!/bin/bash

# Sets up the unprivileged www user, used to run the actual server.

sudo useradd -m www
echo www:$(cat WWW_PASSWD) | sudo chpasswd

exit 0
