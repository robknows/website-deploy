#!/bin/bash
kill $(ps -u root f | grep "/home/ubuntu/q/l32/q up.q" | grep -v "grep" | head -1 | awk '{print $1;}')
exit 0
