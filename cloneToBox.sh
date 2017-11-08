#!/bin/bash
serverfiles=$(cat SERVER_FILES)
remotedir="serverfiles"
./copyToBox.sh $serverfiles $remotedir
./runOnBox.sh "mv $remotedir/* . && rm -d $remotedir"
exit 0
