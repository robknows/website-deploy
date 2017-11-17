#!/bin/bash
serverfiles=$(cat SERVER_FILES)
remotedir="serverfiles"
./runOnBox.sh "rm -rf ./*"
./copyToBox.sh $serverfiles $remotedir
./runOnBox.sh "mv $remotedir/* . && mv $remotedir/.gitignore . && rm -d $remotedir"
exit 0
