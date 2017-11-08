#!/bin/bash
kill $(ps -u root f | grep "$QHOME/l32/q up.q" | grep -v "grep" | head -1 | awk '{print $1;}')
exit 0
