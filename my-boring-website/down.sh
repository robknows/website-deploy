#!/bin/bash
kill $(ps -u $USER f | grep "$QHOME/l32/q up.q" | grep -v "grep" | head -1 | awk '{print $1;}')
exit 0
