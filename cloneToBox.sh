#!/bin/bash
serverfiles=$(cat SERVER_FILES)
remotedir="serverfiles"
./runOnBox.sh "rm -rf ./*"
./copyToBox.sh $serverfiles $remotedir
./runOnBox.sh "mv $remotedir/* . && mv $remotedir/.gitignore . && rm -d $remotedir"
./runOnBox.sh "sudo mv /home/ubuntu/* /home/www/"
./runOnBox.sh "sudo chown -R www:www /home/www/*"
exit 0
